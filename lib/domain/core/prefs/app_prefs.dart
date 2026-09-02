import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../encryption_helper/app_encryption_helper.dart';

/// A class for managing shared preferences in the application.
///
/// This class provides methods to store and retrieve various types of data
/// including encrypted token and MPIN using SharedPreferences.
@lazySingleton
class SharedPrefs {
  /// The instance of `SharedPreferences` used for storing data.
  final SharedPreferences _prefs;

  /// The instance of `AppEncryptionHelper` used for encrypting and decrypting sensitive data.
  final AppEncryptionHelper _encryptionHelper;

  /// Creates an instance of `SharedPrefs`.
  ///
  /// - `_prefs`: The `SharedPreferences` instance.
  /// - `_encryptionHelper`: The `AppEncryptionHelper` instance.
  SharedPrefs(this._prefs, this._encryptionHelper);

  // Keys
  /// The key used to store the theme mode.
  static const String themeMode = 'theme_mode';

  /// The key used to store the translation locale.
  static const String translationLocale = 'translation_locale';

  /// The key used to store the onboarding status.
  static const String hasOnboardedKey = 'has_onboarded';

  /// The key used to store the login status.
  static const String isLoggedInKey = 'is_logged_in';

  /// The key used to store the set mpin status.
  static const String isMpinSetKey = 'is_mpin_set';

  /// The key used to store the User Name.
  static const String userNameKey = 'user_name';

  /// The key used to store the biometric authentication status.
  static const String isBiometricAuthenticatedKey =
      'is_biometric_authenticated';

  /// The key used to store the encrypted user token.
  static const String tokenKey = 'user_token';

  /// The key used to store the encrypted user refresh token.
  static const String refreshTokenKey = 'user_refresh_token';

  /// The key used to store the member code.
  static const String appMemberCodeKey = 'app_member_code';

  /// The key used to store the member code.
  static const String memberCodeKey = 'member_code';

  /// The key used to store the mobile number.
  static const String mobileNumberKey = 'mobile_number';

  /// The key used to store the mobile code.
  static const String mobileCodeKey = 'mobile_code';

  /// The key used to store the ID number.
  static const String idNumberKey = 'id_number';

  /// The key used to store the mobile number without code.
  static const String mobileNumberWithOutCodeKey = 'mobile_without_code';

  // Theme
  /// Sets the theme mode in shared preferences.
  ///
  /// - `mode`: The theme mode to be stored.
  Future<void> setThemeMode(String mode) async {
    await _prefs.setString(themeMode, mode);
  }

  /// Retrieves the theme mode from shared preferences.
  ///
  /// - Returns: The stored theme mode, or `null` if not set.
  String? getThemeMode() => _prefs.getString(themeMode);

  // Locale
  /// Sets the translation locale in shared preferences.
  ///
  /// - `locale`: The locale to be stored.
  Future<void> setTranslationLocale(String locale) async {
    await _prefs.setString(translationLocale, locale);
  }

  /// Retrieves the translation locale from shared preferences.
  ///
  /// - Returns: The stored locale, or `null` if not set.
  String? getTranslationLocale() => _prefs.getString(translationLocale);

  // Onboarding
  /// Sets the onboarding status in shared preferences.
  ///
  /// - `value`: `true` if the user has onboarded, `false` otherwise.
  Future<void> setHasOnboarded(bool value) async {
    await _prefs.setBool(hasOnboardedKey, value);
  }

  /// Retrieves the onboarding status from shared preferences.
  ///
  /// - Returns: `true` if the user has onboarded, `false` otherwise.
  bool getHasOnboarded() => _prefs.getBool(hasOnboardedKey) ?? false;

  // Login Status
  /// Sets the login status in shared preferences.
  ///
  /// - `value`: `true` if the user is logged in, `false` otherwise.
  Future<void> setIsLoggedIn(bool value) async {
    await _prefs.setBool(isLoggedInKey, value);
  }

  /// Retrieves the login status from shared preferences.
  ///
  /// - Returns: `true` if the user is logged in, `false` otherwise.
  bool getIsLoggedIn() => _prefs.getBool(isLoggedInKey) ?? false;

  // MPIN Status
  /// Sets the MPIN set status in shared preferences.
  ///
  /// - `value`: `true` if the user has set an MPIN, `false` otherwise.
  Future<void> setMpin(bool value) async {
    await _prefs.setBool(isMpinSetKey, value);
  }

  /// Retrieves the MPIN set status from shared preferences.
  ///
  /// - Returns: `true` if the user has set an MPIN, `false` otherwise.
  bool getMpin() => _prefs.getBool(isMpinSetKey) ?? false;

  /// Sets the user name in shared preferences.
  ///
  /// - `userName`: The user name to be stored.
  Future<void> setUserName(String userName) async {
    await _prefs.setString(userNameKey, userName);
  }

  /// Retrieves the user name from shared preferences.
  ///
  /// - Returns: The stored user name, or `null` if not set.
  String? getUserName() => _prefs.getString(userNameKey);

  /// Sets the biometric authentication status in shared preferences.
  ///
  /// - `value`: `true` if the user is authenticated with biometrics, `false` otherwise.
  Future<void> setIsBiometricAuthenticated(bool value) async {
    await _prefs.setBool(isBiometricAuthenticatedKey, value);
  }

  /// Retrieves the biometric authentication status from shared preferences.
  ///
  /// - Returns: `true` if the user is authenticated with biometrics, `false` otherwise.
  bool getIsBiometricAuthenticated() =>
      _prefs.getBool(isBiometricAuthenticatedKey) ?? false;

  // 🔐 Secure Token Storage
  /// Sets the encrypted user token in shared preferences.
  ///
  /// - `token`: The user token to be encrypted and stored.
  Future<void> setToken(String token) async {
    final encrypted = _encryptionHelper.encrypt(token);
    await _prefs.setString(tokenKey, encrypted);
  }

  /// Retrieves the decrypted user token from shared preferences.
  ///
  /// - Returns: The decrypted user token, or `null` if not set.
  String? getToken() {
    final encrypted = _prefs.getString(tokenKey);
    if (encrypted == null) return null;
    return _encryptionHelper.decrypt(encrypted);
  }

  /// Deletes the user token from shared preferences.
  ///
  /// // - Returns: `true` if the token was successfully deleted, `false` otherwise.
  Future<bool> deleteToken() async {
    return await _prefs.remove(tokenKey);
  }

  /// Sets the encrypted user refresh token in shared preferences.
  ///
  /// - `refreshToken`: The user refresh token to be encrypted and stored.
  Future<void> setRefreshToken(String refreshToken) async {
    final encrypted = _encryptionHelper.encrypt(refreshToken);
    await _prefs.setString(refreshTokenKey, encrypted);
  }

  /// Retrieves the decrypted user refresh token from shared preferences.
  ///
  /// - Returns: The decrypted user refresh token, or `null` if not set.
  String? getRefreshToken() {
    final encrypted = _prefs.getString(refreshTokenKey);
    if (encrypted == null) return null;
    return _encryptionHelper.decrypt(encrypted);
  }

  // Member Code
  /// Sets the member code in shared preferences.
  ///
  /// - `memberCode`: The member code to be stored.
  Future<void> setAppMemberCode(int memberCode) async {
    await _prefs.setInt(appMemberCodeKey, memberCode);
  }

  /// Retrieves the member code from shared preferences.
  ///
  /// - Returns: The stored member code, or `0` if not set.
  int getAppMemberCode() => _prefs.getInt(appMemberCodeKey) ?? 0;

  /// Sets the member code in shared preferences.
  ///
  /// - `memberCode`: The member code to be stored.
  Future<void> setMemberCode(int memberCode) async {
    await _prefs.setInt(memberCodeKey, memberCode);
  }

  /// Retrieves the member code from shared preferences.
  ///
  /// - Returns: The stored member code, or `0` if not set.
  int getMemberCode() => _prefs.getInt(memberCodeKey) ?? 0;

  /// Sets the mobile number in shared preferences.
  ///
  /// - `mobileNumber`: The mobile number to be stored.
  Future<void> setMobileNumber(String mobileNumber) async {
    await _prefs.setString(mobileNumberKey, mobileNumber);
  }

  /// Retrieves the mobile number from shared preferences.
  ///
  /// - Returns: The stored mobile number, or `null` if not set.
  String? getMobileNumber() => _prefs.getString(mobileNumberKey);

  /// Sets the mobile code in shared preferences.
  ///
  /// - `mobileCode`: The mobile code to be stored.
  Future<void> setMobileCode(int mobileCode) async {
    await _prefs.setInt(mobileCodeKey, mobileCode);
  }

  /// Retrieves the mobile code from shared preferences.
  ///
  /// - Returns: The stored mobile code, or `0` if not set.
  int getMobileCode() => _prefs.getInt(mobileCodeKey) ?? 0;

  /// Sets the ID number in shared preferences.
  ///
  /// - `idNumber`: The ID number to be stored.
  Future<void> setIdNumber(String idNumber) async {
    await _prefs.setString(idNumberKey, idNumber);
  }

  /// Retrieves the ID number from shared preferences.
  ///
  /// - Returns: The stored ID number, or `null` if not set.
  String? getIdNumber() => _prefs.getString(idNumberKey);

  /// Sets the mobile number without code in shared preferences.
  ///
  /// - `mobileNumber`: The mobile number to be stored.
  Future<void> setMobileNumberWithOutCode(String mobileNumber) async {
    await _prefs.setString(mobileNumberWithOutCodeKey, mobileNumber);
  }

  /// Retrieves the mobile number without code from shared preferences.
  ///
  /// - Returns: The stored mobile number without code, or `null` if not set.
  String? getMobileNumberWithOutCode() =>
      _prefs.getString(mobileNumberWithOutCodeKey);

  // Clear all
  /// Clears all data from shared preferences.
  Future<void> clearAll() async {
    await _prefs.clear();
  }
}
