import org.objectweb.asm.*;
import org.objectweb.asm.tree.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.zip.*;

/**
 * Rewrites EkeyLoginActivity.onNewIntent inside EkeySDK.jar so that a
 * necekey://callback that carries ?code=&state= is completed directly
 * (fed through EkeyWebViewController.access$intercept with a synthesized
 * redirect_uri URL) instead of the stock behaviour, which is a bare
 * webView.reload() that never reaches the completion URL on Android.
 *
 * If the callback has no code/state it falls back to the original resume().
 */
public class PatchEkey {

    // Prod default; pass arg[2] to override (e.g. the UAT redirect_uri).
    static String REDIRECT_URI =
        "https://mobileapp.necremit.com/beyon/WS_MobileAPICALLS.asmx";
    static final String ACT = "com/example/ekeysdk/EkeyLoginActivity";
    static final String CTRL = "com/example/ekeysdk/EkeyWebViewController";

    public static void main(String[] a) throws Exception {
        Path in = Paths.get(a[0]);
        Path out = Paths.get(a[1]);
        if (a.length > 2 && !a[2].isEmpty()) REDIRECT_URI = a[2];
        System.out.println("redirect_uri = " + REDIRECT_URI);
        Map<String, byte[]> entries = new LinkedHashMap<>();
        try (ZipInputStream zis = new ZipInputStream(Files.newInputStream(in))) {
            ZipEntry e;
            while ((e = zis.getNextEntry()) != null) {
                ByteArrayOutputStream b = new ByteArrayOutputStream();
                byte[] buf = new byte[8192];
                int n;
                while ((n = zis.read(buf)) > 0) b.write(buf, 0, n);
                entries.put(e.getName(), b.toByteArray());
            }
        }

        String key = ACT + ".class";
        byte[] cls = entries.get(key);
        if (cls == null) throw new IllegalStateException("class not found: " + key);
        entries.put(key, patch(cls));

        try (ZipOutputStream zos = new ZipOutputStream(Files.newOutputStream(out))) {
            for (Map.Entry<String, byte[]> en : entries.entrySet()) {
                ZipEntry ze = new ZipEntry(en.getKey());
                zos.putNextEntry(ze);
                zos.write(en.getValue());
                zos.closeEntry();
            }
        }
        System.out.println("patched -> " + out);
    }

    static byte[] patch(byte[] cls) {
        ClassNode cn = new ClassNode();
        new ClassReader(cls).accept(cn, 0);

        MethodNode m = null;
        for (MethodNode mn : cn.methods) {
            if (mn.name.equals("onNewIntent") && mn.desc.equals("(Landroid/content/Intent;)V")) {
                m = mn;
                break;
            }
        }
        if (m == null) throw new IllegalStateException("onNewIntent(Intent) not found");

        InsnList c = new InsnList();
        LabelNode END = new LabelNode();
        LabelNode RESUME = new LabelNode();

        // super.onNewIntent(intent)
        c.add(new VarInsnNode(Opcodes.ALOAD, 0));
        c.add(new VarInsnNode(Opcodes.ALOAD, 1));
        c.add(new MethodInsnNode(Opcodes.INVOKESPECIAL, cn.superName, "onNewIntent",
            "(Landroid/content/Intent;)V", false));
        // setIntent(intent)
        c.add(new VarInsnNode(Opcodes.ALOAD, 0));
        c.add(new VarInsnNode(Opcodes.ALOAD, 1));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/app/Activity", "setIntent",
            "(Landroid/content/Intent;)V", false));

        // Uri data = intent.getData()
        c.add(new VarInsnNode(Opcodes.ALOAD, 1));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/content/Intent", "getData",
            "()Landroid/net/Uri;", false));
        c.add(new VarInsnNode(Opcodes.ASTORE, 2));

        // if (data == null) return
        c.add(new VarInsnNode(Opcodes.ALOAD, 2));
        c.add(new JumpInsnNode(Opcodes.IFNULL, END));

        // if (!"necekey".equals(data.getScheme())) return
        c.add(new LdcInsnNode("necekey"));
        c.add(new VarInsnNode(Opcodes.ALOAD, 2));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri", "getScheme",
            "()Ljava/lang/String;", false));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "java/lang/String", "equals",
            "(Ljava/lang/Object;)Z", false));
        c.add(new JumpInsnNode(Opcodes.IFEQ, END));

        // EkeyWebViewController ctrl = this.controller; if (ctrl == null) return
        c.add(new VarInsnNode(Opcodes.ALOAD, 0));
        c.add(new FieldInsnNode(Opcodes.GETFIELD, ACT, "controller", "L" + CTRL + ";"));
        c.add(new VarInsnNode(Opcodes.ASTORE, 3));
        c.add(new VarInsnNode(Opcodes.ALOAD, 3));
        c.add(new JumpInsnNode(Opcodes.IFNULL, END));

        // code = data.getQueryParameter("code")
        c.add(new VarInsnNode(Opcodes.ALOAD, 2));
        c.add(new LdcInsnNode("code"));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri", "getQueryParameter",
            "(Ljava/lang/String;)Ljava/lang/String;", false));
        c.add(new VarInsnNode(Opcodes.ASTORE, 4));
        // state = data.getQueryParameter("state")
        c.add(new VarInsnNode(Opcodes.ALOAD, 2));
        c.add(new LdcInsnNode("state"));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri", "getQueryParameter",
            "(Ljava/lang/String;)Ljava/lang/String;", false));
        c.add(new VarInsnNode(Opcodes.ASTORE, 5));

        // if (code == null || state == null) goto RESUME
        c.add(new VarInsnNode(Opcodes.ALOAD, 4));
        c.add(new JumpInsnNode(Opcodes.IFNULL, RESUME));
        c.add(new VarInsnNode(Opcodes.ALOAD, 5));
        c.add(new JumpInsnNode(Opcodes.IFNULL, RESUME));

        // redir = Uri.parse(REDIRECT_URI).buildUpon()
        //           .appendQueryParameter("code", code)
        //           .appendQueryParameter("state", state).build()
        c.add(new LdcInsnNode(REDIRECT_URI));
        c.add(new MethodInsnNode(Opcodes.INVOKESTATIC, "android/net/Uri", "parse",
            "(Ljava/lang/String;)Landroid/net/Uri;", false));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri", "buildUpon",
            "()Landroid/net/Uri$Builder;", false));
        c.add(new LdcInsnNode("code"));
        c.add(new VarInsnNode(Opcodes.ALOAD, 4));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri$Builder", "appendQueryParameter",
            "(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;", false));
        c.add(new LdcInsnNode("state"));
        c.add(new VarInsnNode(Opcodes.ALOAD, 5));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri$Builder", "appendQueryParameter",
            "(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;", false));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "android/net/Uri$Builder", "build",
            "()Landroid/net/Uri;", false));
        c.add(new VarInsnNode(Opcodes.ASTORE, 6));

        // EkeyWebViewController.access$intercept(ctrl, redir);  (drop boolean)
        c.add(new VarInsnNode(Opcodes.ALOAD, 3));
        c.add(new VarInsnNode(Opcodes.ALOAD, 6));
        c.add(new MethodInsnNode(Opcodes.INVOKESTATIC, CTRL, "access$intercept",
            "(L" + CTRL + ";Landroid/net/Uri;)Z", false));
        c.add(new InsnNode(Opcodes.POP));
        c.add(new JumpInsnNode(Opcodes.GOTO, END));

        // RESUME: ctrl.resume()
        c.add(RESUME);
        c.add(new VarInsnNode(Opcodes.ALOAD, 3));
        c.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, CTRL, "resume", "()V", false));

        // END: return
        c.add(END);
        c.add(new InsnNode(Opcodes.RETURN));

        m.instructions = c;
        if (m.tryCatchBlocks != null) m.tryCatchBlocks.clear();
        m.localVariables = null;
        m.visibleLocalVariableAnnotations = null;
        m.invisibleLocalVariableAnnotations = null;
        m.maxStack = 0;
        m.maxLocals = 0;

        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_FRAMES | ClassWriter.COMPUTE_MAXS) {
            @Override
            protected String getCommonSuperClass(String a, String b) {
                try {
                    return super.getCommonSuperClass(a, b);
                } catch (Throwable t) {
                    return "java/lang/Object";
                }
            }
        };
        cn.accept(cw);
        return cw.toByteArray();
    }
}
