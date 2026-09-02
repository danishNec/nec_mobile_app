extension StringFormatExtension on String {
  String toCleanUpperCase() {
    return trim().replaceAll(RegExp(r'\s+'), ' ').toUpperCase();
  }
}