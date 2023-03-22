part of 'package:flutter_helpers/flutter_helpers.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: color,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
