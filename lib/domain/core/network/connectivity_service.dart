import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ConnectivityService {
  final _connectivity = Connectivity();

  /// Emits `true` when online, `false` when offline.
  Stream<bool> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged.map(_hasConnection);

  /// One-shot check of the current network state.
  Future<bool> get isConnected async {
    final results = await _connectivity.checkConnectivity();
    return _hasConnection(results);
  }

  /// Verifies actual internet reachability via DNS lookup.
  /// More reliable than [isConnected] on iOS simulators where the WiFi
  /// interface stays "up" even when internet is blocked.
  Future<bool> get hasInternetAccess async {
    try {
      final result = await InternetAddress.lookup('connectivitycheck.gstatic.com')
          .timeout(const Duration(seconds: 3));
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  bool _hasConnection(List<ConnectivityResult> results) =>
      results.any((r) => r != ConnectivityResult.none);
}
