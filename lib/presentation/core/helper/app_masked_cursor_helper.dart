import 'package:flutter/material.dart';

class AppMaskedCursorHelper {
  static const _lrm = '‎';

  static void placeCursor({
    required TextEditingController controller,
    required String mask,
    required String prefix,
  }) {
    final hasLrm = controller.text.startsWith(_lrm);
    final text = controller.text.replaceFirst(_lrm, '');

    final prefixDigits = prefix.replaceAll(RegExp(r'[^0-9]'), '');
    String digits = text.replaceAll(RegExp(r'[^0-9]'), '');

    if (prefixDigits.isNotEmpty && digits.startsWith(prefixDigits)) {
      digits = digits.substring(prefixDigits.length);
    }

    final maxDigits = mask
        .substring(prefix.length)
        .split('')
        .where((c) => c == 'X')
        .length;

    int cursor;

    if (digits.isEmpty) {
      // no value → after prefix
      cursor = prefix.length;
    } else if (digits.length >= maxDigits) {
      // full → end
      cursor = text.length;
    } else {
      // partial → after last digit
      int count = 0;
      cursor = prefix.length;

      for (int i = prefix.length; i < mask.length; i++) {
        if (mask[i] == 'X') {
          if (count == digits.length) break;
          count++;
        }
        cursor = i + 1;
      }
    }

    controller.selection = TextSelection.collapsed(
      offset: (hasLrm ? 1 : 0) + cursor,
    );
  }
}
