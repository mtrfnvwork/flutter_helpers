part of '../../flutter_helpers.dart';

class CheckBoxButton extends StatelessWidget {
  const CheckBoxButton({
    Key? key,
    required this.value,
    required this.title,
    required this.onChanged,
    this.textStyle,
  }) : super(key: key);

  final bool value;
  final String title;
  final ValueChanged<bool> onChanged;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TapDetector(
      child: Row(
        children: [
          IgnorePointer(
            child: SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: value,
                onChanged: (value) {},
              ),
            ),
          ),
          W(16),
          Expanded(
            child: Text(
              title,
              style: textStyle,
            ),
          ),
        ],
      ),
      onTap: () => onChanged(!value),
    );
  }
}
