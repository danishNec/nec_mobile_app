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

  test('parses a completed result with claims + kycData', () async {
    messenger.setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'initiateLogin');
      return <String, dynamic>{
        'status': 'completed',
        'redirectUri': 'necekey://callback?code=abc&state=xyz',
        'codeVerifier': 'verifier123',
        'claims': <String, dynamic>{
          'sub': 'u-1',
          'name': 'Test User',
          'nested': <String, dynamic>{'a': 1},
        },
        'kycData': <String, dynamic>{
          'nationalId': '900112233',
          'addresses': <dynamic>['line1'],
        },
      };
    });

    final result = await EkeyFlutterSdk.initiateLogin();

    expect(result.status, EkeyLoginStatus.completed);
    expect(result.redirectUri, contains('code=abc'));
    expect(result.codeVerifier, 'verifier123');
    expect(result.claims?['name'], 'Test User');
    expect((result.claims?['nested'] as Map)['a'], 1);
    expect(result.kycData?['nationalId'], '900112233');
  });

  test('completed with no kyc scopes → kycData null', () async {
    messenger.setMockMethodCallHandler(channel, (call) async {
      return <String, dynamic>{
        'status': 'completed',
        'redirectUri': 'necekey://callback?code=abc',
        'claims': <String, dynamic>{'sub': 'u-1'},
      };
    });

    final result = await EkeyFlutterSdk.initiateLogin();

    expect(result.claims?['sub'], 'u-1');
    expect(result.kycData, isNull);
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
