part of 'package:flutter_helpers/flutter_helpers.dart';

class TextStyleBuilder {
  TextStyle? Function(TextStyle? textStyle) callback = (textStyle) => textStyle;

  void update(TextStyle? Function(TextStyle? textStyle) value) {
    callback = value;
  }
}
