part of '../../flutter_helpers.dart';

extension DateTimeExtension on DateTime {
  DateTime get date => DateUtils.dateOnly(this);

  Duration operator -(DateTime other) => difference(other);

  bool operator >(DateTime other) => isAfter(other);

  bool operator <(DateTime other) => isBefore(other);

  bool operator >=(DateTime other) => isAfter(other) || isAtSameMomentAs(other);

  bool operator <=(DateTime other) => isBefore(other) || isAtSameMomentAs(other);

  DateTime operator +(Duration duration) => add(duration);
}
