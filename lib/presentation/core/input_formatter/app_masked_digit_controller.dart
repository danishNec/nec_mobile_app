import 'package:flutter/widgets.dart';

/// A [TextEditingController] that owns a fixed-length digit mask.
///
/// - Unfilled slots show [maskChar] (`'X'` by default).
/// - Non-digit characters in any input are silently discarded.
/// - The cursor is always locked at the end of the typed digits, regardless
///   of where the user taps — so it always "starts from the first position"
///   when the field is empty.
/// - [rawValue] gives the clean digit string (no mask characters).
/// - Call [resetMask] when the mask length must change at runtime
///   (e.g. a different ID type is selected).
class MaskedDigitController extends TextEditingController {
  int _maskLength;
  final String maskChar;

  MaskedDigitController({required int maskLength, this.maskChar = 'X'})
      : _maskLength = maskLength,
        // Bypass our own override during construction.
        super(text: maskChar * maskLength);

  /// Digits typed by the user, with mask characters stripped.
  String get rawValue => text.replaceAll(maskChar, '');

  /// Resets to a new [newLength] and clears any typed input.
  void resetMask(int newLength) {
    _maskLength = newLength;
    // Use super.value to bypass our override — this is a programmatic reset.
    super.value = newLength > 0
        ? TextEditingValue(
            text: maskChar * newLength,
            selection: TextSelection.collapsed(offset: 0),
          )
        : TextEditingValue.empty;
  }

  // ── Text transformation ──────────────────────────────────────────────────

  @override
  set value(TextEditingValue newValue) {
    if (_maskLength == 0) {
      super.value = newValue;
      return;
    }
    // Extract only western digits, up to maskLength.
    final digits = StringBuffer();
    for (final ch in newValue.text.split('')) {
      if (digits.length == _maskLength) break;
      if (ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57) digits.write(ch);
    }
    final filled = digits.toString();
    super.value = TextEditingValue(
      text: filled.padRight(_maskLength, maskChar),
      selection: TextSelection.collapsed(offset: filled.length),
    );
  }

  // ── Cursor lock ──────────────────────────────────────────────────────────

  @override
  set selection(TextSelection newSelection) {
    if (_maskLength == 0) {
      super.selection = newSelection;
      return;
    }
    // Lock cursor to the end of typed digits on every tap / focus event.
    super.selection = TextSelection.collapsed(offset: rawValue.length);
  }
}