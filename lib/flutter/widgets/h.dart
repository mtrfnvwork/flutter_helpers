part of 'package:flutter_helpers/flutter_helpers.dart';

class H extends StatelessWidget {
  const H(
    this.value, {
    Key? key,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}
