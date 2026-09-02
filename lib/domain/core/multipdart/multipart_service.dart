import 'dart:io';
import 'package:http/http.dart' as http;

class MultipartService {
  static Future<http.MultipartFile> convertFile(
      String fileName, String? file) async {
    return await http.MultipartFile.fromPath(fileName, file ?? '');
  }

  static Future<List<http.MultipartFile>> convertFiles(
      String fileInputName, List<File> attachmentFiles) async {
    return Future.wait(attachmentFiles.asMap().entries.map((entry) async {
      final file = entry.value;
      final fileName = file.path.split('/').last;
      final bytes = await file.readAsBytes();
      return http.MultipartFile.fromBytes('$fileInputName[${entry.key}]', bytes,
          filename: fileName);
    }).toList());
  }
}
