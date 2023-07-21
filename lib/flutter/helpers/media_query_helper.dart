part of 'package:flutter_helpers/flutter_helpers.dart';

Size get screenSize {
  var view = WidgetsBinding.instance.platformDispatcher.views.first;
  return view.physicalSize / view.devicePixelRatio;
}

double get screenWidth => screenSize.width;

double get screenHeight => screenSize.height;

double getTopPadding(BuildContext context) => MediaQuery.of(context).padding.top;

double getBottomPadding(BuildContext context) => MediaQuery.of(context).padding.bottom;
