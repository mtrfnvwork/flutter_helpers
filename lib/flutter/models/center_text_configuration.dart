part of 'package:flutter_helpers/flutter_helpers.dart';

class CenterTextConfiguration {
  CenterTextConfiguration({
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.textStyle,
  });

  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
  TextStyle? textStyle;

  void update(CenterTextConfiguration value) {
    padding = value.padding;
    margin = value.margin;
    textStyle = value.textStyle;
  }
}
