part of '../../legacy.dart';

class SnackBarConfiguration({
  var Color? backgroundColor,
  var TextStyle? textStyle,
}) {
  void update(SnackBarConfiguration value) {
    backgroundColor = value.backgroundColor;
    textStyle = value.textStyle;
  }
}
