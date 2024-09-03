part of 'package:flutter_helpers/flutter_helpers.dart';

class CenterTextConfiguration {
  CenterTextConfiguration({
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    TextStyle? textStyle,
  }) : _textStyle = textStyle;

  EdgeInsets padding;
  EdgeInsets margin;

  TextStyle? _textStyle;

  TextStyle? get textStyle => WidgetConfiguration.defaultTextStyleBuilder.callback(_textStyle);

  set textStyle(TextStyle? value) {
    _textStyle = value;
  }

  void update(CenterTextConfiguration value) {
    padding = value.padding;
    margin = value.margin;
    textStyle = value.textStyle;
  }
}
