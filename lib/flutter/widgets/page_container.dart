part of '../../legacy.dart';

@Deprecated('Не должен использоваться из-за проблем с появлением белой области над клавиатурой')
class const PageContainer({
  super.key,
  final bool topSafeArea = true,
  final bool bottomSafeArea = true,
  final EdgeInsetsGeometry padding = .zero,
  required final Widget child,
}) extends StatelessWidget {
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
