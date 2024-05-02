part of 'package:flutter_helpers/flutter_helpers.dart';

@immutable
class TextEditingKit {
  const TextEditingKit({
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

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
