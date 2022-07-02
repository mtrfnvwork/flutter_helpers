part of 'package:flutter_helpers/flutter_helpers.dart';

extension DateTimeExtension on DateTime {
  String format([String? newPattern, String? locale]) => DateFormat(newPattern, locale).format(this);
}
