part of '../../flutter_helpers.dart';

class const TapDetector({
  super.key,
  required final VoidCallback? onTap,
  final VoidCallback? onDoubleTap,
  required final Widget child,
  final EdgeInsetsGeometry padding = .zero,
}) extends StatelessWidget {
  factory icon({
    required VoidCallback? onTap,
    VoidCallback? onDoubleTap,
    required IconData data,
    Color? color,
    double? size,
    EdgeInsetsGeometry padding = .zero,
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

  factory text({
    required VoidCallback? onTap,
    VoidCallback? onDoubleTap,
    required String text,
    TextStyle? style,
    EdgeInsetsGeometry? padding,
  }) {
    return TapDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      padding: padding ?? WidgetConfiguration.tapDetectorConfiguration.padding,
      child: Text(
        text,
        style: WidgetConfiguration.defaultTextStyleBuilder.callback(
          style ?? WidgetConfiguration.tapDetectorConfiguration.textStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget body;

    if (padding == .zero) {
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
          behavior: .translucent,
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          child: body,
        ),
      ),
    );
  }
}
