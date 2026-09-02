import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../domain/core/services/api_services.dart';

/// A module that provides dependency injection for various services and utilities
/// used throughout the application.
@module
abstract class AppInjectableModule {
  /// Provides an instance of `SharedPreferences` for storing key-value pairs locally.
  ///
  /// This is a pre-resolved dependency, meaning it is initialized before being injected.
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  /// Provides an instance of `FlutterSecureStorage` for securely storing sensitive data.
  ///
  /// This is a lazy singleton, meaning it is initialized only when first accessed.
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  /// Provides an instance of `ApiServices` for making API calls.
  ///
  /// This is a lazy singleton, meaning it is initialized only when first accessed.
  @lazySingleton
  ApiServices get apiServices => ApiServices.create();

  /// Provides an instance of `LocalAuthentication` for handling biometric authentication.
  ///
  /// This is a lazy singleton, meaning it is initialized only when first accessed.
  @lazySingleton
  LocalAuthentication get localAuthentication => LocalAuthentication();
}
