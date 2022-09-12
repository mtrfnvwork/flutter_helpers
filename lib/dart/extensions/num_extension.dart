part of 'package:flutter_helpers/flutter_helpers.dart';

extension NumExtension on num {
  bool isBetween(num from, num to) {
    assert(to > from);
    return this >= from && this <= to;
  }
}
