part of '../../flutter_helpers.dart';

ThemeData getTheme(BuildContext context) => Theme.of(context);

Color getPrimaryColor(BuildContext context) => getTheme(context).colorScheme.primary;

Color getSecondaryColor(BuildContext context) => getTheme(context).colorScheme.secondary;

TextStyle getDefaultTextStyle(BuildContext context) => getTheme(context).textTheme.bodyMedium ?? TextStyle();
