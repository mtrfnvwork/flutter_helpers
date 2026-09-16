import 'dart:math' as math;

import 'package:flutter_helpers/legacy.dart';
import 'package:material_ui/material_ui.dart';

part 'package:flutter_helpers/dart/extensions/bool_extension.dart';
part 'package:flutter_helpers/dart/extensions/date_time_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extensions/iterable_extension.dart';
part 'package:flutter_helpers/dart/extensions/string_extensions/string_extension.dart';
part 'package:flutter_helpers/dart/extensions/time_of_day_extension.dart';
part 'package:flutter_helpers/dart/typedefs.dart';
part 'package:flutter_helpers/dart/utils/json_parser.dart';
part 'package:flutter_helpers/flutter/helpers/focus_helper.dart';
part 'package:flutter_helpers/flutter/helpers/media_query_helper.dart';
part 'package:flutter_helpers/flutter/helpers/parsers.dart';
part 'package:flutter_helpers/flutter/helpers/theme_helper.dart';
part 'package:flutter_helpers/flutter/models/text_editing_kit.dart';
part 'package:flutter_helpers/flutter/widgets/center_text.dart';
part 'package:flutter_helpers/flutter/widgets/h.dart';
part 'package:flutter_helpers/flutter/widgets/tap_detector.dart';
part 'package:flutter_helpers/flutter/widgets/w.dart';

class FlutterHelpers() {
  static void configure({
    TextStyle? Function(TextStyle? textStyle)? defaultTextStyleBuilder,
    YesNoDialogConfiguration? yesNoDialogConfiguration,
    TextFormFieldDialogConfiguration? textFormFieldDialogConfiguration,
    RadioButtonConfiguration? radioButtonConfiguration,
    CheckBoxButtonConfiguration? checkBoxButtonConfiguration,
    SnackBarConfiguration? snackBarConfiguration,
    TapDetectorConfiguration? tapDetectorConfiguration,
    CenterTextConfiguration? centerTextConfiguration,
  }) {
    if (defaultTextStyleBuilder != null) {
      WidgetConfiguration.defaultTextStyleBuilder.update(defaultTextStyleBuilder);
    }

    if (yesNoDialogConfiguration != null) {
      WidgetConfiguration.yesNoDialogConfiguration.update(yesNoDialogConfiguration);
    }

    if (textFormFieldDialogConfiguration != null) {
      WidgetConfiguration.textFormFieldDialogConfiguration.update(textFormFieldDialogConfiguration);
    }

    if (radioButtonConfiguration != null) {
      WidgetConfiguration.radioButtonConfiguration.update(radioButtonConfiguration);
    }

    if (checkBoxButtonConfiguration != null) {
      WidgetConfiguration.checkBoxButtonConfiguration.update(checkBoxButtonConfiguration);
    }

    if (snackBarConfiguration != null) {
      WidgetConfiguration.snackBarConfiguration.update(snackBarConfiguration);
    }

    if (tapDetectorConfiguration != null) {
      WidgetConfiguration.tapDetectorConfiguration.update(tapDetectorConfiguration);
    }

    if (centerTextConfiguration != null) {
      WidgetConfiguration.centerTextConfiguration.update(centerTextConfiguration);
    }
  }
}
