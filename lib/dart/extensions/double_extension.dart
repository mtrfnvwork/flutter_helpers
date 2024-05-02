part of 'package:flutter_helpers/flutter_helpers.dart';

extension DoubleExtension on double {
  @Deprecated(
    'Не дает адекватных результатов из-за преобразования в экспоненциальную форму при большом количестве знаков после запятой',
  )
  String trim({
    int? precision,
  }) {
    var str = precision == null ? toString() : toStringAsFixed(precision);

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
