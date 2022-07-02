part of 'package:flutter_helpers/flutter_helpers.dart';

Future<String> showTextFormFieldDialog({
  required BuildContext context,
  String? noButtonText,
  String? yesButtonText,
  String? title,
  String? hintText,
  String? labelText,
  bool? obscureText,
  bool Function(String text)? validator,
  String? errorText,
}) async {
  assert(validator == null || errorText != null);

  return await showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return _TextFormFieldDialog(
            cancelButtonText: noButtonText,
            confirmButtonText: yesButtonText,
            title: title,
            hintText: hintText,
            labelText: labelText,
            obscureText: obscureText,
            validator: validator,
            errorText: errorText,
          );
        },
      ) ??
      '';
}

class _TextFormFieldDialog extends StatefulWidget {
  const _TextFormFieldDialog({
    Key? key,
    required this.cancelButtonText,
    required this.confirmButtonText,
    required this.title,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.validator,
    required this.errorText,
  }) : super(key: key);

  final String? cancelButtonText;
  final String? confirmButtonText;
  final String? title;
  final String? hintText;
  final String? labelText;
  final bool? obscureText;
  final bool Function(String text)? validator;
  final String? errorText;

  @override
  State<_TextFormFieldDialog> createState() => _TextFormFieldDialogState();
}

class _TextFormFieldDialogState extends StateExt<_TextFormFieldDialog> {
  final _controller = TextEditingController();

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
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Изменение пароля'),
      content: TextFormField(
        autofocus: true,
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Новый пароль',
          errorText: _errorText,
        ),
        obscureText: true,
      ),
      actions: [
        DialogButton(
          text: widget.cancelButtonText ?? TextFormFieldDialogSettings.cancelButtonText,
          onPressed: () => pop(context),
        ),
        DialogButton(
          text: widget.confirmButtonText ?? TextFormFieldDialogSettings.confirmButtonText,
          onPressed: _onConfirmPressed,
        ),
      ],
    );
  }
}
