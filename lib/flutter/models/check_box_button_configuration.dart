part of 'package:flutter_helpers/flutter_helpers.dart';

class CheckBoxButtonConfiguration {
  CheckBoxButtonConfiguration({
    this.spacing = 12,
  });

  double spacing;

  void update(CheckBoxButtonConfiguration value) {
    spacing = value.spacing;
  }
}
