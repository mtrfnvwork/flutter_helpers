part of 'package:flutter_helpers/flutter_helpers.dart';

void showSnackBar(
  BuildContext context,
  String text, {
  SnackBarConfiguration? configuration,
}) {
  var backgroundColor = configuration?.backgroundColor ?? WidgetConfiguration.snackBarConfiguration.backgroundColor;
  var textStyle = configuration?.textStyle ?? WidgetConfiguration.snackBarConfiguration.textStyle;

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(
          text,
          style: textStyle,
        ),
      ),
    );
}
