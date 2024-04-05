import 'package:ecommerce_mockup_app/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

/// Home Screen view class
class HomeScreen extends StatelessWidget {
  /// HomeScreen Constructor
  const HomeScreen({super.key});

  Widget _navigationMenu() => const SizedBox();

  Widget _contentArea() => const SizedBox();

  Widget _footer() => const SizedBox();

  @override
  Widget build(final BuildContext context) => Scaffold(
        bottomNavigationBar: _footer(),
        body: Column(
          children: <Widget>[
            const Header(),
            Row(
              children: <Widget>[
                _navigationMenu(),
                Expanded(
                  child: _contentArea(),
                ),
              ],
            ),
          ],
        ),
      );
}
