part of 'package:flutter_helpers/flutter_helpers.dart';

class HiddenWidget extends StatelessWidget {
  const HiddenWidget({
    Key? key,
    required this.hide,
    required this.child,
    this.animationDuration = const Duration(milliseconds: 100),
  }) : super(key: key);

  final bool hide;
  final Widget child;
  final Duration animationDuration;

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
