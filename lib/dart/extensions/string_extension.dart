part of 'package:flutter_helpers/flutter_helpers.dart';

extension StringExtension on String? {
  bool get isNullOrEmpty => this?.isNotEmpty != true;
}
