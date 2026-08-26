part of '../../legacy.dart';

class TapDetectorConfiguration {
  TapDetectorConfiguration({
    this.textStyle,
    this.padding = .zero,
  });

  TextStyle? textStyle;
  EdgeInsetsGeometry padding;

  void update(TapDetectorConfiguration value) {
    textStyle = value.textStyle;
    padding = value.padding;
  }
}
