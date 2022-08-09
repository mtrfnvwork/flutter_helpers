part of 'package:flutter_helpers/flutter_helpers.dart';

class TapDetector extends StatelessWidget {
  const TapDetector({
    Key? key,
    required this.child,
    this.padding = EdgeInsets.zero,
    required this.onTap,
    this.onDoubleTap,
  }) : super(key: key);

  factory TapDetector.icon({
    required IconData data,
    Color? color,
    double? size,
    EdgeInsets padding = EdgeInsets.zero,
    required VoidCallback? onTap,
    VoidCallback? onDoubleTap,
  }) {
    return TapDetector(
      padding: padding,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Icon(
        data,
        color: color,
        size: size,
      ),
    );
  }

  factory TapDetector.text({
    required String text,
    TextStyle? style,
    EdgeInsets? padding,
    required VoidCallback? onTap,
    VoidCallback? onDoubleTap,
  }) {
    return TapDetector(
      padding: padding ?? _TextTapDetectorSettings.padding,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Text(
        text,
        style: style ?? _TextTapDetectorSettings.textStyle,
      ),
    );
  }

  final Widget child;
  final EdgeInsets padding;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    Widget body;

    body = padding == EdgeInsets.zero
        ? child
        : Padding(
            padding: padding,
            child: child,
          );

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: body,
    );
  }
}
