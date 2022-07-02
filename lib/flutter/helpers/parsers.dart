part of 'package:flutter_helpers/flutter_helpers.dart';

TimeOfDay parseTimeOfDay({
  required String input,
}) {
  var split = input.split(':');

  return TimeOfDay(
    hour: int.parse(split[0]),
    minute: int.parse(split[1]),
  );
}
