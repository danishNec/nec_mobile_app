import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ekey_flutter_sdk/ekey_flutter_sdk.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('ekey_flutter_sdk');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  tearDown(() {
    messenger.setMockMethodCallHandler(channel, null);
  });

  test('parses a completed result', () async {
    messenger.setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'initiateLogin');
      return <String, dynamic>{
        'status': 'completed',
        'redirectUri': 'necekey://callback?code=abc&state=xyz',
        'codeVerifier': 'verifier123',
      };
    });

    final result = await EkeyFlutterSdk.initiateLogin();

    expect(result.status, EkeyLoginStatus.completed);
    expect(result.isCompleted, isTrue);
    expect(result.redirectUri, contains('code=abc'));
    expect(result.codeVerifier, 'verifier123');
  });

  test('parses a cancelled result', () async {
    messenger.setMockMethodCallHandler(channel, (call) async {
      return <String, dynamic>{'status': 'cancelled'};
    });

    final result = await EkeyFlutterSdk.initiateLogin();

    expect(result.status, EkeyLoginStatus.cancelled);
    expect(result.isCancelled, isTrue);
  });

  test('unknown status maps to EkeyLoginStatus.unknown', () async {
    messenger.setMockMethodCallHandler(channel, (call) async {
      return <String, dynamic>{'status': 'weird', 'error': 'boom'};
    });

    final result = await EkeyFlutterSdk.initiateLogin();

    expect(result.status, EkeyLoginStatus.unknown);
    expect(result.isFailed, isTrue);
    expect(result.error, 'boom');
  });
}
