import 'package:flutter/material.dart';
import 'package:flutter_helpers/flutter/widgets/tap_detector.dart';
import 'package:flutter_helpers/flutter_helpers.dart';

class RadioButton<T> extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.textStyle,
  }) : super(key: key);

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TapDetector(
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
          W(16),
          Text(
            title,
            style: textStyle,
          ),
        ],
      ),
      onTap: () => onChanged(value),
    );
  }
}
