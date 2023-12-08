part of 'package:flutter_helpers/flutter_helpers.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
  });

  final VoidCallback? onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: color,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
