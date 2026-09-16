part of '../../legacy.dart';

class CheckBoxButton({
  super.key,
  required final bool value,
  final String? title,
  final Widget? child,
  required final ValueChanged<bool> onChanged,
  final TextStyle? textStyle,
  final bool expands = true,
  final CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
}) extends StatelessWidget {
  this : assert([title, child].count((x) => x != null) <= 1);

  @override
  Widget build(BuildContext context) {
    var hasChild = title != null || child != null;
    var childrenAfterCheckbox = <Widget>[];

    if (hasChild) {
      Widget? ch;

      if (title != null) {
        ch = Text(title!, style: textStyle);
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
        mainAxisSize: .min,
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
