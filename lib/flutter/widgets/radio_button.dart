part of 'package:flutter_helpers/flutter_helpers.dart';

class RadioButton<T> extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.onChanged,
    required this.value,
    required this.groupValue,
    required this.title,
    this.textStyle,
    this.expands = false,
  }) : super(key: key);

  final ValueChanged<T> onChanged;
  final T value;
  final T groupValue;
  final String title;
  final TextStyle? textStyle;
  final bool expands;

  @override
  Widget build(BuildContext context) {
    var text = Text(
      title,
      style: textStyle,
    );

    return TapDetector(
      onTap: () => onChanged(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IgnorePointer(
            child: SizedBox(
              width: 24,
              height: 24,
              child: Radio<T>(
                value: value,
                groupValue: groupValue,
                onChanged: (value) {},
              ),
            ),
          ),
          W(WidgetConfiguration.radioButtonConfiguration.spacing),
          if (expands) Expanded(child: text) else text,
        ],
      ),
    );
  }
}
