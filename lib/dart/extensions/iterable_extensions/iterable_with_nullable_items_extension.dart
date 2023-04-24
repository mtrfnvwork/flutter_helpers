part of 'package:flutter_helpers/flutter_helpers.dart';

extension IterableWithNullableItemsExtension<T> on Iterable<T?> {
  Iterable<T> selectNotNullable() => where((e) => e != null).map((e) => e!);
}
