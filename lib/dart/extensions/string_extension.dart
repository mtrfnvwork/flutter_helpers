extension StringExtension on String? {
  bool get isNullOrEmpty => this?.isNotEmpty != false;
}
