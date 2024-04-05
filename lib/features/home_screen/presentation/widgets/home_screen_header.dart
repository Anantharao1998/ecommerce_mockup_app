import 'package:ecommerce_mockup_app/core/core.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;

/// Home Screen header widget
class Header extends StatelessWidget {
  /// Home Screen header widget
  const Header({super.key});

  Widget _logo() => Container(
        color: AppColors.white,
        child: const ImageView(
          alignment: Alignment.center,
          file: AppAssets.logo,
          fit: BoxFit.contain,
        ),
      );

  Widget _banner() => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: svg_provider.Svg(AppAssets.headerAdvertisement)),
          color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppValues.extraBigRadius),
          ),
        ),
      );

  @override
  Widget build(final BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight * 1 / 5,
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.blackTertiary,
            blurRadius: AppValues.doublePoint5,
          ),
        ],
        color: AppColors.white,
      ),
      child: Row(
        children: <Widget>[
          Expanded(flex: 2, child: _logo()),
          Expanded(flex: 5, child: _banner()),
        ],
      ),
    );
  }
}
