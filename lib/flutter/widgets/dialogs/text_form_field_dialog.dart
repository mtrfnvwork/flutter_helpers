part of 'package:flutter_helpers/flutter_helpers.dart';

Future<String?> showTextFormFieldDialog(
  BuildContext context, {
  String? initialValue,
  String? noButtonText,
  String? yesButtonText,
  String? title,
  String? hintText,
  String? labelText,
  bool obscureText = false,
  bool Function(String text)? validator,
  String? errorText,
  int? minLines,
  int? maxLines = 1,
  TextCapitalization textCapitalization = TextCapitalization.none,
}) async {
  assert(validator == null || errorText != null);

  return showDialog(
    context: context,
    builder: (dialogContext) {
      return _TextFormFieldDialog(
        initialValue: initialValue,
        cancelButtonText: noButtonText,
        confirmButtonText: yesButtonText,
        title: title,
        hintText: hintText,
        labelText: labelText,
        obscureText: obscureText,
        validator: validator,
        errorText: errorText,
        minLines: minLines,
        maxLines: maxLines,
        textCapitalization: textCapitalization,
      );
    },
  );
}

class _TextFormFieldDialog extends StatefulWidget {
  const _TextFormFieldDialog({
    Key? key,
    required this.initialValue,
    required this.cancelButtonText,
    required this.confirmButtonText,
    required this.title,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.validator,
    required this.errorText,
    required this.minLines,
    required this.maxLines,
    required this.textCapitalization,
  }) : super(key: key);

  final String? initialValue;
  final String? cancelButtonText;
  final String? confirmButtonText;
  final String? title;
  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final bool Function(String text)? validator;
  final String? errorText;
  final int? minLines;
  final int? maxLines;
  final TextCapitalization textCapitalization;

  @override
  State<_TextFormFieldDialog> createState() => _TextFormFieldDialogState();
}

class _TextFormFieldDialogState extends StateExt<_TextFormFieldDialog> {
  late TextEditingController _controller;

  String? _errorText;

  void _onConfirmPressed() {
    var text = _controller.text;

    if (widget.validator == null) {
      return pop(context, text);
    }

    var valid = widget.validator!(text);

    if (valid) {
      pop(context, text);
    } else {
      ss(() {
        _errorText = widget.errorText;
      });
    }
  }

  @override
  void initState() {
    _controller = TextEditingController(text: widget.initialValue ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: widget.title != null ? Text(widget.title!) : null,
      content: TextFormField(
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
      ),
      actions: [
        DialogButton(
          text: widget.cancelButtonText ?? _TextFormFieldDialogSettings.cancelButtonText,
          onPressed: () => pop(context),
        ),
        DialogButton(
          text: widget.confirmButtonText ?? _TextFormFieldDialogSettings.confirmButtonText,
          onPressed: _onConfirmPressed,
        ),
      ],
    );
  }
}
