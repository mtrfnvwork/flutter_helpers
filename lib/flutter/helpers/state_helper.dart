part of 'package:flutter_helpers/flutter_helpers.dart';

@Deprecated('Не должен использоваться из-за неудобства использования с riverpod')
abstract class StateExt<T extends StatefulWidget> extends State<T> {
  void ss(VoidCallback fn) {
    if (!mounted) {
      return;
    }

    setState(fn);
  }
}
