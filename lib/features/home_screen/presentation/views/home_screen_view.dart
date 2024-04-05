import 'package:ecommerce_mockup_app/core/core.dart';
import 'package:ecommerce_mockup_app/features/home_screen/home_screen.dart';

/// Home Screen view class
class HomeScreen extends StatelessWidget {
  /// HomeScreen Constructor
  const HomeScreen({super.key});

  Widget _contentArea() => const SizedBox();

  Widget _footer() => const SizedBox();

  @override
  Widget build(final BuildContext context) => Scaffold(
        bottomNavigationBar: _footer(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              const Header(),
              const SizedBox(
                height: AppValues.double_10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: NavigationMenu(
                      menuItems: <MenuItem>[
                        MenuItem(name: "Home", thumbnail: AppAssets.homeMenu),
                        MenuItem(name: "Vouchers", thumbnail: AppAssets.voucherMenu),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: _contentArea(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
