part of 'package:flutter_helpers/flutter_helpers.dart';

class W extends StatelessWidget {
  const W(
    this.value, {
    Key? key,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value);
  }
}
