part of 'package:flutter_helpers/flutter_helpers.dart';

class SnackBarConfiguration {
  SnackBarConfiguration({
    this.backgroundColor,
    TextStyle? textStyle,
  }) : _textStyle = textStyle;

  Color? backgroundColor;
  TextStyle? _textStyle;

  TextStyle? get textStyle => WidgetConfiguration.defaultTextStyleBuilder.callback(_textStyle);

  set textStyle(TextStyle? value) {
    _textStyle = value;
  }

  void update(SnackBarConfiguration value) {
    backgroundColor = value.backgroundColor;
    textStyle = value.textStyle;
  }
}
