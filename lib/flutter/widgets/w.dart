import 'package:flutter/material.dart';

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
