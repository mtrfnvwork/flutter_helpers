part of '../../flutter_helpers.dart';

class const W(
  final double value, {
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}
