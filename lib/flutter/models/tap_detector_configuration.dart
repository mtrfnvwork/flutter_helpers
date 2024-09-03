part of 'package:flutter_helpers/flutter_helpers.dart';

class TapDetectorConfiguration {
  TapDetectorConfiguration({
    this.textStyle,
    this.padding = EdgeInsets.zero,
  });

  TextStyle? textStyle = WidgetConfiguration.defaultTextStyle;
  EdgeInsets padding;

  void update(TapDetectorConfiguration value) {
    textStyle = WidgetConfiguration.defaultTextStyle.merge(value.textStyle);
    padding = value.padding;
  }
}
