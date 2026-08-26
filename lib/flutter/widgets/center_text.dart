part of '../../flutter_helpers.dart';

class CenterText extends StatelessWidget {
  const CenterText(
    this.text, {
    super.key,
    this.padding,
    @Deprecated('Будет удалено в будущем') this.margin,
    this.style,
    @Deprecated('Ограничения нужно задавать явно через ConstrainedBox. Будет удалено в будущем.') this.constraints,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final EdgeInsetsGeometry? padding;
  @Deprecated('Будет удалено в будущем')
  final EdgeInsetsGeometry? margin;
  final TextStyle? style;
  @Deprecated('Ограничения нужно задавать явно через ConstrainedBox. Будет удалено в будущем.')
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
          style: WidgetConfiguration.defaultTextStyleBuilder.callback(
            style ?? WidgetConfiguration.centerTextConfiguration.textStyle,
          ),
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
