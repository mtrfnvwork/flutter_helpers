part of 'package:flutter_helpers/flutter_helpers.dart';

extension DynamicExtension<T> on dynamic {
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

  List<T> parseJsonList(T Function(Json json) parser) => (this as List).cast<Json>().map(parser).toList();
}
