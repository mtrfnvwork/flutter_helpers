part of 'package:flutter_helpers/flutter_helpers.dart';

void showSnackBar(
  BuildContext context, {
  required String text,
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: _SnackBarSettings.backgroundColor,
        content: Text(
          text,
          style: _SnackBarSettings.textStyle,
        ),
      ),
    );
}
