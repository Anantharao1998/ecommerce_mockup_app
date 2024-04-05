import 'package:ecommerce_mockup_app/core/core.dart';

/// SnackBar Helper mixin
mixin SnackBarHelper {
  /// A [ScaffoldMessengerState] object can be used to showSnackBar
  final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();

  /// Shows snackBar at the bottom of the screen. Similar to Toast.
  void showInfoSnackbar(final BuildContext context, {final String? message}) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('INFO: $message'),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 10),
      ),
    );
  }
}
