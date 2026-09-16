part of '../../legacy.dart';

class const DialogButton({
  super.key,
  required final VoidCallback? onPressed,
  required final String text,
  final Color? color,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: color),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
