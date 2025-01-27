part of 'package:flutter_helpers/flutter_helpers.dart';

extension NumericIterableExtension<T extends num> on Iterable<T> {
  T sum([T Function(T x)? toElement]) {
    assert(isNotEmpty);
    return (toElement != null ? map(toElement) : this).reduce((n1, n2) => n1 + n2 as T);
  }

  T min([T Function(T x)? toElement]) {
    assert(isNotEmpty);
    return (toElement != null ? map(toElement) : this).reduce(math.min);
  }

  T max([T Function(T x)? toElement]) {
    assert(isNotEmpty);
    return (toElement != null ? map(toElement) : this).reduce(math.max);
  }

  double avg([T Function(T x)? toElement]) {
    assert(isNotEmpty);
    return (toElement != null ? map(toElement) : this).sum() / length;
  }
}
