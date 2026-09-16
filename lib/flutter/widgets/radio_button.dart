part of '../../legacy.dart';

class const RadioButton<T>({
  super.key,
  required final ValueChanged<T> onChanged,
  required final T value,
  required final T groupValue,
  required final String title,
  final TextStyle? textStyle,
  final bool expands = false,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const size = 24.0;

    var text = Text(
      title,
      style: textStyle,
    );

    return TapDetector(
      onTap: () => onChanged(value),
      child: Row(
        mainAxisSize: .min,
        children: [
          IgnorePointer(
            child: SizedBox.square(
              dimension: size,
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
