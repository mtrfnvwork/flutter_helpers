part of 'package:flutter_helpers/flutter_helpers.dart';

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this?.isNotEmpty != true;
}

extension StringExtension on String {
  String capitalizeFirst() {
    assert(isNotEmpty);
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
