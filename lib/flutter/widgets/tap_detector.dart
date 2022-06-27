import 'package:flutter/material.dart';

class TapDetector extends StatelessWidget {
  const TapDetector({
    Key? key,
    required this.child,
    this.padding = EdgeInsets.zero,
    required this.onTap,
  }) : super(key: key);

  factory TapDetector.icon({
    required IconData data,
    Color? color,
    double? size,
    required VoidCallback onTap,
  }) {
    return TapDetector(
      onTap: onTap,
      child: Icon(
        data,
        color: color,
        size: size,
      ),
    );
  }

  final Widget child;
  final EdgeInsets padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
