part of 'package:flutter_helpers/flutter_helpers.dart';

Future<bool> showYesNoDialog({
  required BuildContext context,
  required String text,
  String? noButtonText,
  String? yesButtonText,
}) async {
  return await showDialog(
        context: context,
        builder: (context) {
          return _YesNoDialog(
            text: text,
            noButtonText: noButtonText,
            yesButtonText: yesButtonText,
          );
        },
      ) ??
      false;
}

class _YesNoDialog extends StatelessWidget {
  const _YesNoDialog({
    Key? key,
    required this.text,
    required this.noButtonText,
    required this.yesButtonText,
  }) : super(key: key);

  final String text;
  final String? noButtonText;
  final String? yesButtonText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(text),
      actions: [
        DialogButton(
          text: noButtonText ?? YesNoDialogDialogSettings.noButtonText,
          onPressed: () => pop(context),
        ),
        DialogButton(
          text: yesButtonText ?? YesNoDialogDialogSettings.yesButtonText,
          onPressed: () => pop(context, true),
        ),
      ],
    );
  }
}
