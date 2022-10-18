part of 'package:flutter_helpers/flutter_helpers.dart';

class CheckBoxButton extends StatelessWidget {
  CheckBoxButton({
    Key? key,
    required this.value,
    this.title,
    this.child,
    required this.onChanged,
    this.textStyle,
  })  : assert([title, child].count((x) => x != null) <= 1),
        super(key: key);

  final bool value;
  final String? title;
  final Widget? child;
  final ValueChanged<bool> onChanged;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    var hasChild = title != null || child != null;

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
          if (hasChild) ...[
            W(WidgetConfiguration.checkBoxButtonConfiguration.spacing),
            Expanded(
              child: Builder(
                builder: (context) {
                  if (title != null) {
                    return Text(
                      title!,
                      style: textStyle,
                    );
                  }

                  if (child != null) {
                    return child!;
                  }

                  return const SizedBox();
                },
              ),
            ),
          ],
        ],
      ),
      onTap: () => onChanged(!value),
    );
  }
}
