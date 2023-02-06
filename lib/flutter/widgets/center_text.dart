part of 'package:flutter_helpers/flutter_helpers.dart';

class CenterText extends StatelessWidget {
  const CenterText(
    this.text, {
    Key? key,
    this.padding,
    this.margin,
    this.style,
    this.constraints,
  }) : super(key: key);

  final String text;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final TextStyle? style;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    var child = Center(
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

    if (constraints != null) {
      return ConstrainedBox(
        constraints: constraints!,
        child: child,
      );
    }

    return child;
  }
}
