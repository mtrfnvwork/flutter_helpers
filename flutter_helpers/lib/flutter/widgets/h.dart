part of 'package:flutter_helpers/flutter_helpers.dart';

class H extends StatelessWidget {
  const H(
    this.value, {
    super.key,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}
