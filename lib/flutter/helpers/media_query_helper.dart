part of 'package:flutter_helpers/flutter_helpers.dart';

double getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double getTopPadding(BuildContext context) => MediaQuery.of(context).padding.top;

double getBottomPadding(BuildContext context) => MediaQuery.of(context).padding.bottom;
