part of '../../legacy.dart';

class CenterTextConfiguration {
  CenterTextConfiguration({
    this.padding = .zero,
    this.margin = .zero,
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
