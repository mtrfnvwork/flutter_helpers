part of '../../legacy.dart';

extension NumExtension on num {
  bool isBetween(num from, num to) {
    assert(to >= from);
    return this >= from && this <= to;
  }
}
