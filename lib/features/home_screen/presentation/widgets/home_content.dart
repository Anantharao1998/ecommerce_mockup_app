import 'package:ecommerce_mockup_app/core/core.dart';

/// Home Screen Content body
class HomeContent extends StatelessWidget {
  /// Home Screen Content body

  const HomeContent({super.key});

  @override
  Widget build(final BuildContext context) => const Column(
        children: <Widget>[
          Text(AppStrings.contentTitle),
          Text(AppStrings.contentSubtitle),
        ],
      );
}
