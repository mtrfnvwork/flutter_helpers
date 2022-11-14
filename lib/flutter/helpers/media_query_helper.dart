part of 'package:flutter_helpers/flutter_helpers.dart';

Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;

double getScreenWidth(BuildContext context) => getScreenSize(context).width;

double getScreenHeight(BuildContext context) => getScreenSize(context).height;

double getTopPadding(BuildContext context) => MediaQuery.of(context).padding.top;

double getBottomPadding(BuildContext context) => MediaQuery.of(context).padding.bottom;
