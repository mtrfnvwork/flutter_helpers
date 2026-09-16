part of '../../../legacy.dart';

Future<void> showTextDialog(
  BuildContext context,
  String text, {
  String? title,
  String okText = 'ОК',
}) async {
  await showDialog(
    context: context,
    builder: (context) => _TextDialog(
      title: title,
      text: text,
      okText: okText,
    ),
  );
}

class const _TextDialog({
  required final String? title,
  required final String text,
  required final String okText,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title!) : null,
      content: Text(text),
      actions: [
        DialogButton(
          text: okText,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
