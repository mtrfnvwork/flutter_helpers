part of 'package:flutter_helpers/flutter_helpers.dart';

TimeOfDay? tryParseTimeOfDay(String input) {
  try {
    var split = input.split(':');

    return TimeOfDay(
      hour: int.parse(split[0]),
      minute: int.parse(split[1]),
    );
  } catch (_) {
    return null;
  }
}

TimeOfDay parseTimeOfDay(String input) => tryParseTimeOfDay(input)!;
