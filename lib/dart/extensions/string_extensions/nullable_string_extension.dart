part of '../../../legacy.dart';

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this?.isNotEmpty != true;

  bool get isNotNullOrEmpty => this?.isNotEmpty == true;
}
