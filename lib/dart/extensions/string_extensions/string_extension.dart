part of 'package:flutter_helpers/flutter_helpers.dart';

extension StringExtension on String {
  String capitalizeFirst() {
    assert(isNotEmpty);
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
