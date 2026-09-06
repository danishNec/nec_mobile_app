import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_device/safe_device.dart';

import '../../domain/security/security_threat.dart';

@lazySingleton
class SecurityService {
  final _controller = StreamController<Set<SecurityThreat>>.broadcast();
  final _deviceInfo = DeviceInfoPlugin();

  bool _isMonitoring = false;
  // ignore: unused_field — intentionally kept alive; periodic timer runs for app lifetime
  Timer? _periodicTimer;
  Set<SecurityThreat> _currentThreats = {};

  Stream<Set<SecurityThreat>> get threatStream => _controller.stream;
  Set<SecurityThreat> get currentThreats => Set.unmodifiable(_currentThreats);

  void startMonitoring() {
    if (_isMonitoring) return;
    _isMonitoring = true;
    runChecks();
    _periodicTimer = Timer.periodic(
      const Duration(seconds: 30),
      (_) => runChecks(),
    );
  }

  Future<void> runChecks() async {
    if (!Platform.isIOS && !Platform.isAndroid) return;

    // Debug builds are for development on emulators / simulators / rooted test
    // devices with USB debugging — none of the device-integrity checks apply.
    // Release builds enforce everything below.
    if (kDebugMode) {
      _currentThreats = {};
      if (!_controller.isClosed) _controller.add({});
      return;
    }

    final threats = <SecurityThreat>{};

    // Jailbreak (iOS) / Root (Android)
    try {
      if (await SafeDevice.isJailBroken) {
        threats.add(SecurityThreat.jailbreakOrRoot);
      }
    } catch (_) {}

    // Developer mode (Android)
    try {
      if (Platform.isAndroid && await SafeDevice.isDevelopmentModeEnable) {
        threats.add(SecurityThreat.developerMode);
      }
    } catch (_) {}

    // USB debugging (Android) — commonly used by VAPT teams to attach debuggers
    try {
      if (Platform.isAndroid && await SafeDevice.isUsbDebuggingEnabled) {
        threats.add(SecurityThreat.usbDebugging);
      }
    } catch (_) {}

    // Emulator / Simulator
    try {
      final isPhysical = Platform.isAndroid
          ? (await _deviceInfo.androidInfo).isPhysicalDevice
          : (await _deviceInfo.iosInfo).isPhysicalDevice;
      if (!isPhysical) threats.add(SecurityThreat.emulator);
    } catch (_) {}

    // Mock location — indicates GPS spoofing tools
    try {
      if (await SafeDevice.isMockLocation) {
        threats.add(SecurityThreat.mockLocation);
      }
    } catch (_) {}

    _currentThreats = threats;
    if (!_controller.isClosed) _controller.add(threats);
  }
}
