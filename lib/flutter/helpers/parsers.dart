part of 'package:flutter_helpers/flutter_helpers.dart';

TimeOfDay? tryParseTimeOfDay(String input) {
  try {
    var split = input.split(':');

    var parsed = TimeOfDay(
      hour: int.parse(split[0]),
      minute: int.parse(split[1]),
    );

    if (parsed.hour.isBetween(0, 23) && parsed.minute.isBetween(0, 59)) {
      return parsed;
    }
  } catch (_) {}

  return null;
}

TimeOfDay parseTimeOfDay(String input) => tryParseTimeOfDay(input)!;
