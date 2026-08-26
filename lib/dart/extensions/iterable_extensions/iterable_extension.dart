part of '../../../flutter_helpers.dart';

extension IterableExtension<T, K extends num, V, D extends DateTime> on Iterable<T> {
  @Deprecated('Лучше использовать пакет collection или встроенный метод firstOrNull')
  T? firstOrDefault([bool Function(T x)? test]) {
    if (isEmpty) {
      return null;
    }

    if (test == null) {
      return first;
    }

    for (var item in this) {
      if (test(item)) {
        return item;
      }
    }

    return null;
  }

  @Deprecated('Лучше использовать пакет collection или встроенный метод lastOrNull')
  T? lastOrDefault([bool Function(T x)? test]) {
    if (isEmpty) {
      return null;
    }

    if (test == null) {
      return last;
    }

    for (var i = length - 1; i >= 0; i--) {
      var item = elementAt(i);

      if (test(item)) {
        return item;
      }
    }

    return null;
  }

  int count(bool Function(T x) test) => isNotEmpty ? where(test).length : 0;

  @Deprecated('Лучше использовать пакет collection')
  K sum(K Function(T x) toElement) {
    assert(isNotEmpty);
    return map(toElement).sum();
  }

  @Deprecated('Лучше использовать пакет collection')
  K min(K Function(T x) toElement) {
    assert(isNotEmpty);
    return map(toElement).min();
  }

  @Deprecated('Лучше использовать пакет collection')
  K max(K Function(T x) toElement) {
    assert(isNotEmpty);
    return map(toElement).max();
  }

  @Deprecated('Лучше использовать пакет collection')
  double avg(K Function(T x) toElement) {
    assert(isNotEmpty);
    return map(toElement).avg();
  }

  @Deprecated('Лучше использовать пакет collection')
  D minDate(D Function(T x) toElement) {
    assert(isNotEmpty);
    return map(toElement).min();
  }

  @Deprecated('Лучше использовать пакет collection')
  D maxDate(D Function(T x) toElement) {
    assert(isNotEmpty);
    return map(toElement).max();
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

  @Deprecated('Лучше использовать пакет collection')
  T random() {
    assert(isNotEmpty);
    return elementAt(math.Random.secure().nextInt(length));
  }

  Iterable<T> separated(T separator) {
    return isEmpty
        ? Iterable<T>.empty()
        : [
            for (var i = 0; i < length; i++) ...[
              if (i > 0) separator,
              elementAt(i),
            ],
          ];
  }

  List<Widget> separatedWidgets(Widget separator) => cast<Widget>().separated(separator).toList();
}
