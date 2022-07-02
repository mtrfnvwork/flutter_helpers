part of '../../flutter_helpers.dart';

extension StringExtension on String? {
  bool get isNullOrEmpty => this?.isNotEmpty != false;
}
