extension IterableExtension<T> on Iterable<T> {
  T? firstOrDefault([bool Function(T element)? test]) => isNotEmpty
      ? test != null
          ? firstWhere(test)
          : first
      : null;

  T? lastOrDefault([bool Function(T element)? test]) => isNotEmpty
      ? test != null
          ? lastWhere(test)
          : last
      : null;
}
