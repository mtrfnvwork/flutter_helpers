part of 'package:flutter_helpers/flutter_helpers.dart';

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

class _TextDialog extends StatelessWidget {
  const _TextDialog({
    required this.title,
    required this.text,
    required this.okText,
  });

  final String? title;
  final String text;
  final String okText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title!) : null,
      content: Text(text),
      actions: [
        DialogButton(
          text: okText,
          onPressed: () => pop(context),
        ),
      ],
    );
  }
}
