part of '../../legacy.dart';

class TextStyleBuilder() {
  TextStyle? Function(TextStyle? textStyle) callback = (textStyle) => textStyle;

  void update(TextStyle? Function(TextStyle? textStyle) value) {
    callback = value;
  }
}
