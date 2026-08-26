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

class _YesNoDialog extends StatelessWidget {
  const _YesNoDialog({
    required this.text,
    required this.noButtonText,
    required this.yesButtonText,
  });

  final String text;
  final String? noButtonText;
  final String? yesButtonText;

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
