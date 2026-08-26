part of '../../legacy.dart';

class RadioButtonConfiguration {
  RadioButtonConfiguration({
    this.spacing = 12,
  });

  double spacing;

  void update(RadioButtonConfiguration value) {
    spacing = value.spacing;
  }
}
