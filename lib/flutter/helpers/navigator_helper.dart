part of 'package:flutter_helpers/flutter_helpers.dart';

Future<T?> push<T extends Object?>(
  BuildContext context,
  Widget page, {
  RouteSettings? settings,
  bool fullscreenDialog = false,
}) {
  return Navigator.push<T>(
    context,
    MaterialPageRoute<T>(
      builder: (context) => page,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    ),
  );
}

Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
  BuildContext context,
  Widget page, {
  TO? result,
  RouteSettings? settings,
  bool fullscreenDialog = false,
}) {
  return Navigator.pushReplacement<T, TO>(
    context,
    MaterialPageRoute<T>(
      builder: (context) => page,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    ),
    result: result,
  );
}

Future<T?> pushAndRemoveUntil<T extends Object?>(
  BuildContext context,
  Widget page,
  RoutePredicate predicate, {
  RouteSettings? settings,
  bool fullscreenDialog = false,
}) {
  return Navigator.pushAndRemoveUntil<T>(
    context,
    MaterialPageRoute<T>(
      builder: (context) => page,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    ),
    predicate,
  );
}

void pop<T extends Object?>(BuildContext context, [T? result]) {
  Navigator.pop<T>(context, result);
}

void popUntil(BuildContext context, RoutePredicate predicate) {
  Navigator.popUntil(context, predicate);
}

bool canPop(BuildContext context) {
  var navigator = Navigator.maybeOf(context);
  return navigator != null && navigator.canPop();
}

Future<bool> maybePop<T extends Object?>(BuildContext context, [T? result]) {
  return Navigator.maybePop<T>(context, result);
}
