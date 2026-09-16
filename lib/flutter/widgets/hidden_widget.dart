part of '../../legacy.dart';

class const HiddenWidget({
  super.key,
  required final bool hide,
  required final Widget child,
  final Duration animationDuration = const Duration(milliseconds: 100),
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: hide,
      child: AnimatedOpacity(
        duration: animationDuration,
        opacity: hide ? 0 : 1,
        child: child,
      ),
    );
  }
}
