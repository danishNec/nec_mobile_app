import 'dart:async';

import 'package:flutter/material.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/di/injection.dart';
import '../../domain/security/security_threat.dart';
import '../../infrastructure/security/security_service.dart';
import 'security_blocked_screen.dart';

class SecurityGate extends StatefulWidget {
  final Widget child;

  const SecurityGate({super.key, required this.child});

  @override
  State<SecurityGate> createState() => _SecurityGateState();
}

class _SecurityGateState extends State<SecurityGate>
    with WidgetsBindingObserver {
  late final SecurityService _service;
  StreamSubscription<Set<SecurityThreat>>? _sub;
  Set<SecurityThreat> _threats = {};

  @override
  void initState() {
    super.initState();
    if (!AppConfig.securityGateEnabled) return;

    _service = getIt<SecurityService>();
    WidgetsBinding.instance.addObserver(this);
    _sub = _service.threatStream.listen((threats) {
      if (mounted) setState(() => _threats = threats);
    });
    _service.startMonitoring();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!AppConfig.securityGateEnabled) return;
    if (state == AppLifecycleState.resumed) _service.runChecks();
  }

  @override
  void dispose() {
    if (AppConfig.securityGateEnabled) {
      WidgetsBinding.instance.removeObserver(this);
      _sub?.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (AppConfig.securityGateEnabled && _threats.isNotEmpty) {
      return SecurityBlockedScreen(threats: _threats);
    }
    return widget.child;
  }
}
