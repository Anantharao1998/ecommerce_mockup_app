import 'package:ecommerce_mockup_app/core/core.dart';

/// Widget extension
extension WidgetExtension on Widget {
  /// Adds onTap to a Widget
  Widget onClick(final VoidCallback onClick) => InkWell(
        onTap: onClick,
        child: this,
      );
}

/// Text Extension
extension TextExtension on Text {
  /// Gives an underline below Text widgets
  Widget underlined({final Color? color, final double? height, final double? width}) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this,
          Divider(
            color: color ?? AppColors.black,
            height: height,
            thickness: width,
          ),
        ],
      );
}
