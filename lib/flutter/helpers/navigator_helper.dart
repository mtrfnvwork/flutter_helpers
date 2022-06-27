import 'package:flutter/material.dart';

Future<T?> push<T extends Object?>(
  BuildContext context,
  Widget page, {
  bool fullscreenDialog = false,
}) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
      fullscreenDialog: fullscreenDialog,
    ),
  );
}

Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
  BuildContext context,
  Widget page, {
  TO? result,
  bool fullscreenDialog = false,
}) {
  return Navigator.pushReplacement<T, TO>(
    context,
    MaterialPageRoute(
      builder: (context) => page,
      fullscreenDialog: fullscreenDialog,
    ),
    result: result,
  );
}

Future<T?> pushAndRemoveUntil<T extends Object?>(
  BuildContext context,
  Widget page,
  RoutePredicate predicate, {
  bool fullscreenDialog = false,
}) {
  return Navigator.pushAndRemoveUntil<T>(
    context,
    MaterialPageRoute(
      builder: (context) => page,
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
