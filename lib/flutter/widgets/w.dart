part of 'package:flutter_helpers/flutter_helpers.dart';

class W extends StatelessWidget {
  const W(
    this.value, {
    super.key,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value);
  }
}
