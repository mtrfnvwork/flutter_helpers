part of '../../../legacy.dart';

extension NullableMapExtension<T, K> on Map<T, K>? {
  bool get isNullOrEmpty => this?.isNotEmpty != true;

  bool get isNotNullOrEmpty => this?.isNotEmpty == true;
}
