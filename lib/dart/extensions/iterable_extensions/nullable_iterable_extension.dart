part of 'package:flutter_helpers/flutter_helpers.dart';

extension NullableIterableExtension<T> on Iterable<T>? {
  bool get isNullOrEmpty => this?.isNotEmpty != true;

  bool get isNotNullOrEmpty => this?.isNotEmpty == true;
}
