import 'dart:math' as math;

extension IterableExtension<T, K extends num, V> on Iterable<T> {
  T? firstOrDefault([bool Function(T x)? test]) => isNotEmpty
      ? test != null
          ? firstWhere(test)
          : first
      : null;

  T? lastOrDefault([bool Function(T x)? test]) => isNotEmpty
      ? test != null
          ? lastWhere(test)
          : last
      : null;

  K sum(K Function(T x) toElement) {
    assert(isNotEmpty);
    return (map(toElement)).sum();
  }

  K min(K Function(T x) toElement) {
    assert(isNotEmpty);
    return (map(toElement)).min();
  }

  K max(K Function(T x) toElement) {
    assert(isNotEmpty);
    return (map(toElement)).max();
  }

  Iterable<T> distinct() => toSet();

  Iterable<T> distinctBy(V Function(T x) toElement) {
    var result = <V, T>{};

    for (var item in this) {
      var key = toElement(item);

      if (!result.containsKey(key)) {
        result[key] = item;
      }
    }

    return result.values;
  }
}

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
}

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
