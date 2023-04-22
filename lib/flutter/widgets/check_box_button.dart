part of 'package:flutter_helpers/flutter_helpers.dart';

class CheckBoxButton extends StatelessWidget {
  CheckBoxButton({
    Key? key,
    required this.value,
    this.title,
    this.child,
    required this.onChanged,
    this.textStyle,
    this.expands = true,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  })  : assert([title, child].count((x) => x != null) <= 1),
        super(key: key);

  final bool value;
  final String? title;
  final Widget? child;
  final ValueChanged<bool> onChanged;
  final TextStyle? textStyle;
  final bool expands;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    var hasChild = title != null || child != null;
    var childrenAfterCheckbox = <Widget>[];

    if (hasChild) {
      Widget? ch;

      if (title != null) {
        ch = Text(
          title!,
          style: textStyle,
        );
      } else if (child != null) {
        ch = child;
      }

      if (ch != null) {
        childrenAfterCheckbox.add(W(WidgetConfiguration.checkBoxButtonConfiguration.spacing));

        if (expands) {
          childrenAfterCheckbox.add(Expanded(child: ch));
        } else {
          childrenAfterCheckbox.add(ch);
        }
      }
    }

    return TapDetector(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          IgnorePointer(
            child: SizedBox.square(
              dimension: 24,
              child: Checkbox(
                value: value,
                onChanged: (value) {},
              ),
            ),
          ),
          ...childrenAfterCheckbox,
        ],
      ),
      onTap: () => onChanged(!value),
    );
  }
}
