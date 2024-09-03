part of 'package:flutter_helpers/flutter_helpers.dart';

class TapDetectorConfiguration {
  TapDetectorConfiguration({
    this.textStyle,
    this.padding = EdgeInsets.zero,
  });

  TextStyle? textStyle;
  EdgeInsets padding;

  void update(TapDetectorConfiguration value) {
    textStyle = WidgetConfiguration.defaultTextStyleBuilder.callback(value.textStyle);
    padding = value.padding;
  }
}
