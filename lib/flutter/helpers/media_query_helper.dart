part of 'package:flutter_helpers/flutter_helpers.dart';

Size getScreenSize(BuildContext context) {
  var result = MediaQuery.of(context).size;

  var view = WidgetsBinding.instance.platformDispatcher.views.first;

  log('SCREEN SIZE TEST: view.physicalSize / view.devicePixelRatio: ${view.physicalSize / view.devicePixelRatio}');
  log('SCREEN SIZE TEST: MediaQuery.of(context).size: $result');
  log('SCREEN SIZE TEST: ${view.physicalSize / view.devicePixelRatio == result}');

  return result;
}

double getScreenWidth(BuildContext context) => getScreenSize(context).width;

double getScreenHeight(BuildContext context) => getScreenSize(context).height;

double getTopPadding(BuildContext context) => MediaQuery.of(context).padding.top;

double getBottomPadding(BuildContext context) => MediaQuery.of(context).padding.bottom;
