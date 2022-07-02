library flutter_helpers;

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'package:flutter_helpers/dart/extensions/date_time_extension.dart';

part 'package:flutter_helpers/dart/extensions/iterable_extension.dart';

part 'package:flutter_helpers/dart/extensions/string_extension.dart';

part 'package:flutter_helpers/flutter/helpers/focus_helper.dart';

part 'package:flutter_helpers/flutter/helpers/navigator_helper.dart';

part 'package:flutter_helpers/flutter/helpers/state_helper.dart';

part 'package:flutter_helpers/flutter/widgets/center_text.dart';

part 'package:flutter_helpers/flutter/widgets/check_box_button.dart';

part 'package:flutter_helpers/flutter/widgets/dialog_button.dart';

part 'package:flutter_helpers/flutter/widgets/dialogs/text_form_field_dialog.dart';

part 'package:flutter_helpers/flutter/widgets/dialogs/yes_no_dialog.dart';

part 'package:flutter_helpers/flutter/widgets/h.dart';

part 'package:flutter_helpers/flutter/widgets/page_container.dart';

part 'package:flutter_helpers/flutter/widgets/radio_button.dart';

part 'package:flutter_helpers/flutter/widgets/tap_detector.dart';

part 'package:flutter_helpers/flutter/widgets/w.dart';

part 'package:flutter_helpers/flutter/widgets/widget_settings.dart';

class FlutterHelpers {
  static void changeYesNoDialogSettings({
    String? defaultNoButtonText,
    String? defaultYesButtonText,
  }) {
    if (defaultNoButtonText != null) {
      YesNoDialogDialogSettings.noButtonText = defaultNoButtonText;
    }

    if (defaultYesButtonText != null) {
      YesNoDialogDialogSettings.yesButtonText = defaultYesButtonText;
    }
  }
}
