part of 'package:flutter_helpers/flutter_helpers.dart';

class TapDetectorConfiguration {
  TapDetectorConfiguration({
    TextStyle? textStyle,
    this.padding = EdgeInsets.zero,
  }) : _textStyle = textStyle;

  TextStyle? _textStyle;

  TextStyle? get textStyle => WidgetConfiguration.defaultTextStyleBuilder.callback(_textStyle);

  set textStyle(TextStyle? value) {
    _textStyle = value;
  }

  EdgeInsets padding;

  void update(TapDetectorConfiguration value) {
    textStyle = value.textStyle;
    padding = value.padding;
  }
}
