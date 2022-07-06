import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  Duration toDuration() => Duration(hours: hour, minutes: minute);

  bool operator >(TimeOfDay other) => hour * 60 + minute > other.hour * 60 + other.minute;

  bool operator <(TimeOfDay other) => hour * 60 + minute < other.hour * 60 + other.minute;

  bool operator >=(TimeOfDay other) => hour * 60 + minute >= other.hour * 60 + other.minute;

  bool operator <=(TimeOfDay other) => hour * 60 + minute <= other.hour * 60 + other.minute;
}
