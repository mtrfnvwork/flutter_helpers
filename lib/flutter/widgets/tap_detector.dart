part of 'package:flutter_helpers/flutter_helpers.dart';

class TapDetector extends StatelessWidget {
  const TapDetector({
    super.key,
    required this.onTap,
    this.onDoubleTap,
    required this.child,
    this.padding = EdgeInsets.zero,
  });

  factory TapDetector.icon({
    required VoidCallback? onTap,
    VoidCallback? onDoubleTap,
    required IconData data,
    Color? color,
    double? size,
    EdgeInsets padding = EdgeInsets.zero,
  }) {
    return TapDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      padding: padding,
      child: Icon(
        data,
        color: color,
        size: size,
      ),
    );
  }

  factory TapDetector.text({
    required VoidCallback? onTap,
    VoidCallback? onDoubleTap,
    required String text,
    TextStyle? style,
    EdgeInsets? padding,
  }) {
    return TapDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      padding: padding ?? WidgetConfiguration.tapDetectorConfiguration.padding,
      child: Text(
        text,
        style: WidgetConfiguration.defaultTextStyleBuilder
            .callback(style ?? WidgetConfiguration.tapDetectorConfiguration.textStyle),
      ),
    );
  }

  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    Widget body;

    if (padding == EdgeInsets.zero) {
      body = child;
    } else {
      body = Padding(
        padding: padding,
        child: child,
      );
    }

    return SelectionContainer.disabled(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          child: body,
        ),
      ),
    );
  }
}
