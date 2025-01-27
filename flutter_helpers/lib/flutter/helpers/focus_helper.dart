part of 'package:flutter_helpers/flutter_helpers.dart';

void unfocus(BuildContext context) => FocusScope.of(context).requestFocus(FocusNode());
