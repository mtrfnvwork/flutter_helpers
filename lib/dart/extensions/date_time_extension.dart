part of 'package:flutter_helpers/flutter_helpers.dart';

extension DateTimeExtension on DateTime {
  String format([String? newPattern, String? locale]) => DateFormat(newPattern, locale).format(this);

  Duration operator -(DateTime other) => difference(other);

  bool operator >(DateTime other) => isAfter(other);

  bool operator <(DateTime other) => isBefore(other);

  bool operator >=(DateTime other) => isAfter(other) || isAtSameMomentAs(other);

  bool operator <=(DateTime other) => isBefore(other) || isAtSameMomentAs(other);
}
