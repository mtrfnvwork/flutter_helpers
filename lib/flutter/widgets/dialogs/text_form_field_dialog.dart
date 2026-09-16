part of '../../../legacy.dart';

Future<String?> showTextFormFieldDialog(
  BuildContext context, {
  String? initialValue,
  String? cancelButtonText,
  String? confirmButtonText,
  String? title,
  String? hintText,
  String? labelText,
  bool obscureText = false,
  bool Function(String text)? validator,
  String? errorText,
  int? minLines,
  int? maxLines = 1,
  TextCapitalization textCapitalization = .none,
  TextInputType? keyboardType,
}) async {
  assert(validator == null || errorText != null);

  return showDialog(
    context: context,
    builder: (dialogContext) => _TextFormFieldDialog(
      initialValue: initialValue,
      cancelButtonText: cancelButtonText,
      confirmButtonText: confirmButtonText,
      title: title,
      hintText: hintText,
      labelText: labelText,
      obscureText: obscureText,
      validator: validator,
      errorText: errorText,
      minLines: minLines,
      maxLines: maxLines,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
    ),
  );
}

class const _TextFormFieldDialog({
  required final String? initialValue,
  required final String? cancelButtonText,
  required final String? confirmButtonText,
  required final String? title,
  required final String? hintText,
  required final String? labelText,
  required final bool obscureText,
  required final bool Function(String text)? validator,
  required final String? errorText,
  required final int? minLines,
  required final int? maxLines,
  required final TextCapitalization textCapitalization,
  required final TextInputType? keyboardType,
}) extends StatefulWidget {
  @override
  State<_TextFormFieldDialog> createState() => _TextFormFieldDialogState();
}

class _TextFormFieldDialogState() extends State<_TextFormFieldDialog> {
  late TextEditingController _controller;
  String? _errorText;

  void _onConfirmPressed() {
    var text = _controller.text;

    if (widget.validator == null) {
      return Navigator.pop(context, text);
    }

    var valid = widget.validator!(text);

    if (valid) {
      Navigator.pop(context, text);
      return;
    }

    if (!mounted) {
      return;
    }

    setState(() {
      _errorText = widget.errorText;
    });
  }

  @override
  void initState() {
    _controller = TextEditingController(text: widget.initialValue ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 16.0;

    return AlertDialog(
      title: widget.title != null ? Text(widget.title!) : null,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: 16,
      ),
      content: SizedBox(
        width: screenWidth - horizontalPadding * 2,
        child: TextFormField(
          autofocus: true,
          controller: _controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            errorText: _errorText,
          ),
          obscureText: widget.obscureText,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          textCapitalization: widget.textCapitalization,
          onFieldSubmitted: (value) => _onConfirmPressed(),
          keyboardType: widget.keyboardType,
        ),
      ),
      actions: [
        DialogButton(
          text: widget.cancelButtonText ?? WidgetConfiguration.textFormFieldDialogConfiguration.cancelButtonText,
          onPressed: () => Navigator.pop(context),
        ),
        DialogButton(
          text: widget.confirmButtonText ?? WidgetConfiguration.textFormFieldDialogConfiguration.confirmButtonText,
          onPressed: _onConfirmPressed,
        ),
      ],
    );
  }
}
