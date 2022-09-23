part of 'package:flutter_helpers/flutter_helpers.dart';

extension DateTimeIterableExtension<T extends DateTime> on Iterable<T> {
  T min() {
    assert(isNotEmpty);

    var minMicrosecondsSinceEpoch = map((e) => e.microsecondsSinceEpoch).reduce(math.min);
    return firstWhere((e) => e.microsecondsSinceEpoch == minMicrosecondsSinceEpoch);
  }

  T max() {
    assert(isNotEmpty);

    var maxMicrosecondsSinceEpoch = map((e) => e.microsecondsSinceEpoch).reduce(math.max);
    return firstWhere((e) => e.microsecondsSinceEpoch == maxMicrosecondsSinceEpoch);
  }
}
