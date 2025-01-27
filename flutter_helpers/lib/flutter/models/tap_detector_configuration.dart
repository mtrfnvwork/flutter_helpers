part of 'package:flutter_helpers/flutter_helpers.dart';

class TapDetectorConfiguration {
  TapDetectorConfiguration({
    this.textStyle,
    this.padding = EdgeInsets.zero,
  });

  TextStyle? textStyle;
  EdgeInsetsGeometry padding;

  void update(TapDetectorConfiguration value) {
    textStyle = value.textStyle;
    padding = value.padding;
  }
}
