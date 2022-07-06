import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  Duration toDuration() => Duration(hours: hour, minutes: minute);
}
