part of '../../../legacy.dart';

extension NullableIterableExtension<T> on Iterable<T>? {
  bool get isNullOrEmpty => this?.isNotEmpty != true;

  bool get isNotNullOrEmpty => this?.isNotEmpty == true;
}
