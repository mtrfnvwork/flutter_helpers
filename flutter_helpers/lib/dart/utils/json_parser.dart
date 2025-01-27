part of 'package:flutter_helpers/flutter_helpers.dart';

T? tryParse<T>(dynamic value, T Function(Json json) parser) {
  if (value == null) {
    return null;
  }

  try {
    return parser(value as Json);
  } catch (error, trace) {
    debugPrint('$error\n$trace');
    return null;
  }
}

List<T> parseList<T>(dynamic value, T Function(dynamic x) parser) => (value as List).map(parser).toList();

List<T> parseJsonList<T>(dynamic value, T Function(Json json) parser) => parseList(value, (x) => parser(x as Json));
