part of 'package:flutter_helpers/flutter_helpers.dart';

abstract class StateExt<T extends StatefulWidget> extends State<T> {
  void ss(VoidCallback fn) {
    if (!mounted) {
      return;
    }

    setState(fn);
  }
}
