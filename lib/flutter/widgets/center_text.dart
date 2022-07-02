part of '../../flutter_helpers.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    Key? key,
    required this.text,
    this.padding = EdgeInsets.zero,
    this.style,
  }) : super(key: key);

  final String text;
  final EdgeInsets padding;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
