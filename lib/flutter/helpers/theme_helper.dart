part of 'package:flutter_helpers/flutter_helpers.dart';

ThemeData getTheme(BuildContext context) => Theme.of(context);

Color getPrimaryColor(BuildContext context) => getTheme(context).colorScheme.primary;

Color getSecondaryColor(BuildContext context) => getTheme(context).colorScheme.secondary;
