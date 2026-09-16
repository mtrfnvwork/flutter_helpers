part of '../../legacy.dart';

class CenterTextConfiguration({
  var EdgeInsetsGeometry padding = .zero,
  var EdgeInsetsGeometry margin = .zero,
  var TextStyle? textStyle,
}) {
  void update(CenterTextConfiguration value) {
    padding = value.padding;
    margin = value.margin;
    textStyle = value.textStyle;
  }
}
