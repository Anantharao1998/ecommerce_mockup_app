import 'package:ecommerce_mockup_app/core/core.dart';

/// Widget extension
extension WidgetExtension on Widget {
  /// Adds onTap to a Widget
  Widget onClick(final VoidCallback onClick) => InkWell(
        onTap: onClick,
        child: this,
      );
}
