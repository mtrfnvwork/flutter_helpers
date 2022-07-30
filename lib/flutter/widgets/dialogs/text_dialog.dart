part of 'package:flutter_helpers/flutter_helpers.dart';

Future<void> showTextDialog({
  required BuildContext context,
  String? title,
  required String text,
}) async {
  await showDialog(
    context: context,
    builder: (context) => _TextDialog(
      title: title,
      text: text,
    ),
  );
}

class _TextDialog extends StatelessWidget {
  const _TextDialog({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String? title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title!) : null,
      content: Text(text),
    );
  }
}
