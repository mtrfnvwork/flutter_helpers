part of 'package:flutter_helpers/flutter_helpers.dart';

@immutable
class TextEditingKit {
  TextEditingKit({
    TextEditingController? controller,
    FocusNode? focusNode,
    String? text,
  })  : assert(
          controller == null || text == null,
          'Если контроллер не равен null, текст должен устанавливаться непосредственно в контроллер, а не передаваться в качестве параметра в данный конструктор',
        ),
        controller = controller ?? TextEditingController(text: text),
        focusNode = focusNode ?? FocusNode();

  final TextEditingController controller;
  final FocusNode focusNode;

  String get text => controller.text;

  set text(String text) => controller.text = text;

  TextEditingValue get value => controller.value;

  set value(TextEditingValue value) => controller.value = value;

  TextSelection get selection => controller.selection;

  set selection(TextSelection selection) => controller.selection = selection;

  void clear() => controller.clear();

  bool get hasFocus => focusNode.hasFocus;

  void requestFocus() => focusNode.requestFocus();

  void dispose() {
    controller.dispose();
    focusNode.dispose();
  }

  TextEditingKit copyWith({
    TextEditingController? controller,
    FocusNode? focusNode,
  }) {
    return TextEditingKit(
      controller: controller ?? this.controller,
      focusNode: focusNode ?? this.focusNode,
    );
  }
}
