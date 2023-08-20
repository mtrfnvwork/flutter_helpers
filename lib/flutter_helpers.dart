library flutter_helpers;

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'package:flutter_helpers/dart/extensions/bool_extension.dart';
part 'package:flutter_helpers/dart/extensions/date_time_extension.dart';
part 'package:flutter_helpers/dart/extensions/double_extension.dart';
part 'package:flutter_helpers/dart/extensions/int_to_duration_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extensions/date_time_iterable_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extensions/iterable_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extensions/iterable_with_nullable_items_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extensions/nullable_iterable_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extensions/numeric_iterable_extension.dart';
part 'package:flutter_helpers/dart/extensions/map_extensions/nullable_map_extension.dart';
part 'package:flutter_helpers/dart/extensions/num_extension.dart';
part 'package:flutter_helpers/dart/extensions/string_extensions/nullable_string_extension.dart';
part 'package:flutter_helpers/dart/extensions/string_extensions/string_extension.dart';
part 'package:flutter_helpers/dart/extensions/time_of_day_extension.dart';
part 'package:flutter_helpers/dart/typedefs.dart';
part 'package:flutter_helpers/dart/utils/json_parser.dart';
part 'package:flutter_helpers/flutter/helpers/focus_helper.dart';
part 'package:flutter_helpers/flutter/helpers/media_query_helper.dart';
part 'package:flutter_helpers/flutter/helpers/navigator_helper.dart';
part 'package:flutter_helpers/flutter/helpers/parsers.dart';
part 'package:flutter_helpers/flutter/helpers/state_helper.dart';
part 'package:flutter_helpers/flutter/helpers/theme_helper.dart';
part 'package:flutter_helpers/flutter/models/center_text_configuration.dart';
part 'package:flutter_helpers/flutter/models/check_box_button_configuration.dart';
part 'package:flutter_helpers/flutter/models/radio_button_configuration.dart';
part 'package:flutter_helpers/flutter/models/snack_bar_configuration.dart';
part 'package:flutter_helpers/flutter/models/tap_detector_configuration.dart';
part 'package:flutter_helpers/flutter/models/text_form_field_dialog_configuration.dart';
part 'package:flutter_helpers/flutter/models/yes_no_dialog_configuration.dart';
part 'package:flutter_helpers/flutter/widget_configuration.dart';
part 'package:flutter_helpers/flutter/widgets/center_text.dart';
part 'package:flutter_helpers/flutter/widgets/check_box_button.dart';
part 'package:flutter_helpers/flutter/widgets/dialog_button.dart';
part 'package:flutter_helpers/flutter/widgets/dialogs/snack_bar.dart';
part 'package:flutter_helpers/flutter/widgets/dialogs/text_dialog.dart';
part 'package:flutter_helpers/flutter/widgets/dialogs/text_form_field_dialog.dart';
part 'package:flutter_helpers/flutter/widgets/dialogs/yes_no_dialog.dart';
part 'package:flutter_helpers/flutter/widgets/h.dart';
part 'package:flutter_helpers/flutter/widgets/hidden_widget.dart';
part 'package:flutter_helpers/flutter/widgets/page_container.dart';
part 'package:flutter_helpers/flutter/widgets/radio_button.dart';
part 'package:flutter_helpers/flutter/widgets/tap_detector.dart';
part 'package:flutter_helpers/flutter/widgets/w.dart';

class FlutterHelpers {
  static void configure({
    YesNoDialogConfiguration? yesNoDialogConfiguration,
    TextFormFieldDialogConfiguration? textFormFieldDialogConfiguration,
    RadioButtonConfiguration? radioButtonConfiguration,
    CheckBoxButtonConfiguration? checkBoxButtonConfiguration,
    SnackBarConfiguration? snackBarConfiguration,
    TapDetectorConfiguration? tapDetectorConfiguration,
    CenterTextConfiguration? centerTextConfiguration,
  }) {
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
