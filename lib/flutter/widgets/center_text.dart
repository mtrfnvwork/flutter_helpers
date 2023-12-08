part of 'package:flutter_helpers/flutter_helpers.dart';

class CenterText extends StatelessWidget {
  const CenterText(
    this.text, {
    super.key,
    this.padding,
    this.margin,
    this.style,
    this.constraints,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final TextStyle? style;
  final BoxConstraints? constraints;
  final int? maxLines;
  final TextOverflow? overflow;

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
          maxLines: maxLines,
          overflow: overflow,
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
