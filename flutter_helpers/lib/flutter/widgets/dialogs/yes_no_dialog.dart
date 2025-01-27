part of 'package:flutter_helpers/flutter_helpers.dart';

Future<bool> showYesNoDialog(
  BuildContext context,
  String text, {
  String? noButtonText,
  String? yesButtonText,
}) async {
  var result = await showDialog(
    context: context,
    builder: (context) {
      return _YesNoDialog(
        text: text,
        noButtonText: noButtonText,
        yesButtonText: yesButtonText,
      );
    },
  );

  return result ?? false;
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
