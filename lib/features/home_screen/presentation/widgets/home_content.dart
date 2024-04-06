import 'package:ecommerce_mockup_app/core/core.dart';

/// Home Screen Content body
class HomeContent extends StatelessWidget {
  /// Home Screen Content body

  const HomeContent({super.key});

  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            AppStrings.contentTitle,
            style: AppStyles.h1,
          ).underlined(),
          const Text(AppStrings.contentSubtitle),
        ],
      );
}
