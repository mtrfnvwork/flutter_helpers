part of 'package:flutter_helpers/flutter_helpers.dart';

extension DoubleExtension on double {
  String trim({
    int? precision,
  }) {
    var str = precision == null ? toString() : toStringAsFixed(2);

    if (str.contains('.')) {
      while (str.endsWith('0')) {
        str = str.substring(0, str.length - 1);
      }

      if (str.endsWith('.')) {
        str = str.substring(0, str.length - 1);
      }
    }

    return str;
  }
}
