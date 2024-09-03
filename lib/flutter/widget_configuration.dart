part of 'package:flutter_helpers/flutter_helpers.dart';

class WidgetConfiguration {
  static TextStyle? Function(TextStyle? textStyle) defaultTextStyleBuilder = (textStyle) => textStyle;
  static YesNoDialogConfiguration yesNoDialogConfiguration = YesNoDialogConfiguration();
  static TextFormFieldDialogConfiguration textFormFieldDialogConfiguration = TextFormFieldDialogConfiguration();
  static RadioButtonConfiguration radioButtonConfiguration = RadioButtonConfiguration();
  static CheckBoxButtonConfiguration checkBoxButtonConfiguration = CheckBoxButtonConfiguration();
  static SnackBarConfiguration snackBarConfiguration = SnackBarConfiguration();
  static TapDetectorConfiguration tapDetectorConfiguration = TapDetectorConfiguration();
  static CenterTextConfiguration centerTextConfiguration = CenterTextConfiguration();
}
