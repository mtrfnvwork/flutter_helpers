part of '../../legacy.dart';

class TapDetectorConfiguration({
  var TextStyle? textStyle,
  var EdgeInsetsGeometry padding = .zero,
}) {
  void update(TapDetectorConfiguration value) {
    textStyle = value.textStyle;
    padding = value.padding;
  }
}
