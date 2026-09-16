part of '../../flutter_helpers.dart';

class const H(
  final double value, {
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
