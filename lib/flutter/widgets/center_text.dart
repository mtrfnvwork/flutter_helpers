part of 'package:flutter_helpers/flutter_helpers.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    Key? key,
    required this.text,
    this.padding,
    this.margin,
    this.style,
  }) : super(key: key);

  final String text;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: padding ?? WidgetConfiguration.centerTextConfiguration.padding,
        margin: margin ?? WidgetConfiguration.centerTextConfiguration.margin,
        child: Text(
          text,
          style: style ?? WidgetConfiguration.centerTextConfiguration.textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
