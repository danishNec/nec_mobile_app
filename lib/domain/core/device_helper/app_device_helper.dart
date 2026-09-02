import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@lazySingleton
class AppDeviceHelper {
  final FlutterSecureStorage _storage;
  AppDeviceHelper(this._storage);

  static const _deviceKey = 'persistent_device_id';

  /// Generates a device fingerprint that persists across app reinstalls.
  /// Combines device ID, model, and OS version, then hashes it.
  Future<Map<String, String>> getDeviceFingerprint() async {
    final deviceInfo = DeviceInfoPlugin();
    String deviceId = '';
    String model = '';
    String osVersion = '';

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      // Use Android ID (survives reinstall unless factory reset)
      deviceId = androidInfo.id;
      model = "${androidInfo.manufacturer} ${androidInfo.model}";
      osVersion = "Android ${androidInfo.version.release}";
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      // Use persistent UUID stored in Keychain via flutter_secure_storage
      deviceId = await _getOrCreatePersistentId();
      model = iosInfo.utsname.machine;
      osVersion = "${iosInfo.systemName} ${iosInfo.systemVersion}";
    }

    // Combine info to create a fingerprint
    final raw = "$deviceId|$model|$osVersion";
    final fingerprint = sha256.convert(utf8.encode(raw)).toString();

    return {
      "deviceId": deviceId,
      "model": model,
      "osVersion": osVersion,
      "fingerprint": fingerprint,
    };
  }

  /// Creates or retrieves a persistent device ID stored in Keychain (iOS)
  Future<String> _getOrCreatePersistentId() async {
    String? existingId = await _storage.read(key: _deviceKey);
    if (existingId?.isNotEmpty == true) {
      return existingId!;
    }

    // Generate a new UUID for first-time installation
    final newId = const Uuid().v4();
    await _storage.write(key: _deviceKey, value: newId);
    return newId;
  }

  /// For debugging/testing: clear the saved ID (not for production)
  Future<void> resetPersistentId() async {
    await _storage.delete(key: _deviceKey);
  }
}