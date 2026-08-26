part of '../../flutter_helpers.dart';

TimeOfDay? tryParseTimeOfDay(String input) {
  try {
    var split = input.split(':');
    var parsed = TimeOfDay(hour: int.parse(split[0]), minute: int.parse(split[1]));

    if (parsed.hour >= 0 && parsed.hour <= 23 && parsed.minute >= 0 && parsed.minute <= 59) {
      return parsed;
    }
  } catch (_) {}

  return null;
}

TimeOfDay parseTimeOfDay(String input) => tryParseTimeOfDay(input)!;
