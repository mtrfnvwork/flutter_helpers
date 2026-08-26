part of '../../../flutter_helpers.dart';

extension StringExtension on String {
  String capitalizeFirst() => isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
}
