part of 'package:flutter_helpers/flutter_helpers.dart';

extension DynamicExtension<T> on Object? {
  T? tryParse(T Function(Json json) parser) {
    if (this == null) {
      return null;
    }

    try {
      return parser(this as Json);
    } catch (error, trace) {
      debugPrint('$error\n$trace');
      return null;
    }
  }

  List<T> parseList(T Function(dynamic x) parser) => (this as List).map(parser).toList();

  List<T> parseJsonList(T Function(Json json) parser) => parseList((x) => parser(x as Json));
}
