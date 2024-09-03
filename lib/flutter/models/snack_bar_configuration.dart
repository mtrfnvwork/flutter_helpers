part of 'package:flutter_helpers/flutter_helpers.dart';

class SnackBarConfiguration {
  SnackBarConfiguration({
    this.backgroundColor,
    this.textStyle,
  });

  Color? backgroundColor;
  TextStyle? textStyle = WidgetConfiguration.defaultTextStyle;

  void update(SnackBarConfiguration value) {
    backgroundColor = value.backgroundColor;
    textStyle = WidgetConfiguration.defaultTextStyle.merge(value.textStyle);
  }
}
