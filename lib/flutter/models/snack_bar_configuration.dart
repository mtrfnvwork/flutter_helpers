part of '../../legacy.dart';

class SnackBarConfiguration {
  SnackBarConfiguration({
    this.backgroundColor,
    this.textStyle,
  });

  Color? backgroundColor;
  TextStyle? textStyle;

  void update(SnackBarConfiguration value) {
    backgroundColor = value.backgroundColor;
    textStyle = value.textStyle;
  }
}
