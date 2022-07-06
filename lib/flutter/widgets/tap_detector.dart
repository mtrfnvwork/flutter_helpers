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

  final Widget child;
  final EdgeInsets padding;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
