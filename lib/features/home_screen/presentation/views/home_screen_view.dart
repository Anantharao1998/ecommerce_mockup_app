import 'package:ecommerce_mockup_app/core/core.dart';
import 'package:ecommerce_mockup_app/features/home_screen/home_screen.dart';

/// Home Screen view class
class HomeScreen extends StatelessWidget {
  /// HomeScreen Constructor
  const HomeScreen({super.key});

  Widget _footer() => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      );

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        NavigationMenu(
                          menuItems: <MenuItem>[
                            MenuItem(name: "Home", thumbnail: AppAssets.homeMenu),
                            MenuItem(name: "Vouchers", thumbnail: AppAssets.voucherMenu),
                          ],
                        ),
                        NavigationMenu(
                          menuItems: <MenuItem>[
                            MenuItem(name: "Home", thumbnail: AppAssets.homeMenu),
                            MenuItem(name: "Vouchers", thumbnail: AppAssets.voucherMenu),
                            MenuItem(name: "Tickets", thumbnail: AppAssets.voucherMenu),
                            MenuItem(name: "Slips", thumbnail: AppAssets.voucherMenu),
                            MenuItem(name: "Money", thumbnail: AppAssets.voucherMenu),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Expanded(flex: 4, child: HomeContent()),
                ],
              ),
            ],
          ),
        ),
      );
}
