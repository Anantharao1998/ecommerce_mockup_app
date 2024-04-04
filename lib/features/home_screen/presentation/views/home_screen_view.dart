import 'package:flutter/material.dart';

/// Home Screen view class
class HomeScreen extends StatelessWidget {
  /// HomeScreen Constructor
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: _mainBody(),
      );

  Widget _mainBody() => const Column();
}
