import 'package:flutter/material.dart';
import 'package:flutter_helpers/flutter/helpers/focus_helper.dart';
import 'package:flutter_helpers/flutter/widgets/tap_detector.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key? key,
    this.topSafeArea = true,
    this.bottomSafeArea = true,
    this.padding = EdgeInsets.zero,
    required this.child,
  }) : super(key: key);

  final EdgeInsets padding;
  final bool topSafeArea;
  final bool bottomSafeArea;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TapDetector(
      child: SafeArea(
        top: topSafeArea,
        bottom: bottomSafeArea,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
      onTap: () => unfocus(context),
    );
  }
}
