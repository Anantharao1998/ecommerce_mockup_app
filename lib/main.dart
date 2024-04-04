import 'package:flutter/material.dart';

import 'features/home_screen/presentation/views/home_screen_view.dart';

void main() {
  runApp(const MyApp());
}

/// Master main widget class
class MyApp extends StatelessWidget {
  /// MyApp constructor
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      );
}
