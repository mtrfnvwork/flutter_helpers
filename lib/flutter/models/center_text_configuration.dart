part of 'package:flutter_helpers/flutter_helpers.dart';

class CenterTextConfiguration {
  CenterTextConfiguration({
    this.padding = EdgeInsets.zero,
    this.textStyle,
  });

  EdgeInsets padding;
  TextStyle? textStyle;

  void update(CenterTextConfiguration value) {
    padding = value.padding;
    textStyle = value.textStyle;
  }
}
