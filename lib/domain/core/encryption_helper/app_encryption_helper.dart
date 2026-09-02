import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:injectable/injectable.dart';

/// A helper class for encryption and decryption of data using AES-GCM mode.
///
/// This class provides methods to securely encrypt and decrypt strings.
/// It uses a fixed 32-byte encryption key and generates a random IV (Initialization Vector)
/// for each encryption operation to ensure security.
@lazySingleton
class AppEncryptionHelper {
  // A constant 32-byte encryption key used for AES encryption.
  static const _encryptionKey = 'A1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6';

  final Encrypter
  _encrypter; // The Encrypter instance for performing encryption and decryption.
  final Key _key; // The encryption key used by the Encrypter.

  /// Constructs an instance of [AppEncryptionHelper].
  ///
  /// Initializes the encryption key and the Encrypter with AES-GCM mode.
  AppEncryptionHelper()
    : _key = Key.fromUtf8(_encryptionKey),
      _encrypter = Encrypter(
        AES(Key.fromUtf8(_encryptionKey), mode: AESMode.gcm),
      );

  /// Encrypts the given plaintext string.
  ///
  /// Generates a random 12-byte IV, encrypts the plaintext, and combines the IV
  /// with the ciphertext for storage.
  ///
  /// - [plainText]: The plaintext string to encrypt.
  /// - Returns: A Base64-encoded string containing the IV and ciphertext.
  String encrypt(String plainText) {
    final iv = IV.fromSecureRandom(12); // 12 bytes recommended for GCM
    final encrypted = _encrypter.encrypt(plainText, iv: iv);

    // Combine IV + ciphertext for storage
    final combined = Uint8List.fromList(iv.bytes + encrypted.bytes);
    return Encrypted(combined).base64;
  }

  /// Decrypts the given Base64-encoded string.
  ///
  /// Extracts the IV (first 12 bytes) and ciphertext from the input, then
  /// decrypts the ciphertext using the extracted IV.
  ///
  /// - [base64Text]: The Base64-encoded string containing the IV and ciphertext.
  /// - Returns: The decrypted plaintext string.
  String decrypt(String base64Text) {
    final combined = Encrypted.fromBase64(base64Text).bytes;

    // Extract IV (first 12 bytes)
    final iv = IV(Uint8List.fromList(combined.sublist(0, 12)));

    // Extract ciphertext
    final encrypted = Encrypted(Uint8List.fromList(combined.sublist(12)));

    return _encrypter.decrypt(encrypted, iv: iv);
  }
}
