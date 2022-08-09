library flutter_helpers;

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'package:flutter_helpers/dart/extensions/date_time_extension.dart';
part 'package:flutter_helpers/dart/extensions/iterable_extension.dart';
part 'package:flutter_helpers/dart/extensions/string_extension.dart';
part 'package:flutter_helpers/dart/extensions/time_of_day_extension.dart';
part 'package:flutter_helpers/flutter/helpers/focus_helper.dart';
part 'package:flutter_helpers/flutter/helpers/navigator_helper.dart';
part 'package:flutter_helpers/flutter/helpers/parsers.dart';
part 'package:flutter_helpers/flutter/helpers/state_helper.dart';
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
part 'package:flutter_helpers/widget_settings.dart';

class FlutterHelpers {
  static void changeYesNoDialogSettings({
    String? noButtonText,
    String? yesButtonText,
  }) {
    if (noButtonText != null) {
      _YesNoDialogDialogSettings.noButtonText = noButtonText;
    }

    if (yesButtonText != null) {
      _YesNoDialogDialogSettings.yesButtonText = yesButtonText;
    }
  }

  static void changeTextFormFieldDialogSettings({
    String? cancelButtonText,
    String? confirmButtonText,
  }) {
    if (cancelButtonText != null) {
      _TextFormFieldDialogSettings.cancelButtonText = cancelButtonText;
    }

    if (confirmButtonText != null) {
      _TextFormFieldDialogSettings.confirmButtonText = confirmButtonText;
    }
  }

  static void changeSnackBarSettings({
    Color? backgroundColor,
    TextStyle? textStyle,
  }) {
    _SnackBarSettings.backgroundColor = backgroundColor;
    _SnackBarSettings.textStyle = textStyle;
  }

  static void changeTapDetectorSettings({
    TextStyle? textStyle,
    EdgeInsets padding = EdgeInsets.zero,
  }) {
    _TextTapDetectorSettings.textStyle = textStyle;
    _TextTapDetectorSettings.padding = padding;
  }
}
