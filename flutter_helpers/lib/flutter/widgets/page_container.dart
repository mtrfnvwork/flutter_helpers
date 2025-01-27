part of 'package:flutter_helpers/flutter_helpers.dart';

@Deprecated('Не должен использоваться из-за проблем с появлением белой области над клавиатурой')
class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    this.topSafeArea = true,
    this.bottomSafeArea = true,
    this.padding = EdgeInsets.zero,
    required this.child,
  });

  final EdgeInsetsGeometry padding;
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
