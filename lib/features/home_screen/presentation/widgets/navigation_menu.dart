import 'package:ecommerce_mockup_app/core/core.dart';
import 'package:ecommerce_mockup_app/features/home_screen/home_screen.dart';

/// Navigation Menu Widget
class NavigationMenu extends StatelessWidget {
  /// Navigation Menu Widget
  const NavigationMenu({required this.menuItems, super.key});

  /// Menu Items
  final List<MenuItem> menuItems;

  @override
  Widget build(final BuildContext context) => Container(
        margin: const EdgeInsets.all(
          AppValues.smallPadding,
        ),
        padding: const EdgeInsets.all(
          AppValues.smallPadding,
        ),
        decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.blackTertiary,
              blurRadius: AppValues.doublePoint5,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppValues.mediumRadius,
            ),
          ),
        ),
        child: Column(
          children: menuItems
              .map(
                (final MenuItem e) => _MenuItemTile(
                  name: e.name,
                  assetName: e.thumbnail,
                ),
              )
              .toList(),
        ),
      );
}

class _MenuItemTile extends StatelessWidget with SnackBarHelper {
  _MenuItemTile({required this.assetName, required this.name});

  final String assetName;
  final String name;

  @override
  Widget build(final BuildContext context) => ListTile(
        onTap: () {
          showInfoSnackbar(context, message: "$name clicked !!!");
        },
        contentPadding: EdgeInsets.zero,
        leading: ImageView(
          height: AppValues.double_30,
          fit: BoxFit.contain,
          file: assetName,
        ),
        title: Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );
}
