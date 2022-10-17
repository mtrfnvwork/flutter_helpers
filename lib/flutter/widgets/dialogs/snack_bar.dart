part of 'package:flutter_helpers/flutter_helpers.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: WidgetConfiguration.snackBarConfiguration.backgroundColor,
        content: Text(
          text,
          style: WidgetConfiguration.snackBarConfiguration.textStyle,
        ),
      ),
    );
}
