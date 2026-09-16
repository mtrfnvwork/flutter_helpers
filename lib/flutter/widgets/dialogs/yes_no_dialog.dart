part of '../../../legacy.dart';

Future<bool> showYesNoDialog(
  BuildContext context,
  String text, {
  String? noButtonText,
  String? yesButtonText,
}) async {
  return await showDialog(
        context: context,
        builder: (context) => _YesNoDialog(
          text: text,
          noButtonText: noButtonText,
          yesButtonText: yesButtonText,
        ),
      ) ??
      false;
}

class const _YesNoDialog({
  required final String text,
  required final String? noButtonText,
  required final String? yesButtonText,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(text),
      actions: [
        DialogButton(
          text: noButtonText ?? WidgetConfiguration.yesNoDialogConfiguration.noButtonText,
          onPressed: () => Navigator.pop(context),
        ),
        DialogButton(
          text: yesButtonText ?? WidgetConfiguration.yesNoDialogConfiguration.yesButtonText,
          onPressed: () => Navigator.pop(context, true),
        ),
      ],
    );
  }
}
