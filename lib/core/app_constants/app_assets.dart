/// Constant class for App Assets
library;
// ignore_for_file: public_member_api_docs

class AppAssets {
  AppAssets._();

  static const String logo = "${_advertisementPath}dunkin-logo-transparent.svg";
  static const String headerAdvertisement = "${_advertisementPath}advertisement1.svg";
  static const String homeMenu = "${_sidebarPath}donut-home.svg";
  static const String voucherMenu = "${_sidebarPath}vouchers.svg";

  static const String _advertisementPath = "assets/advertisement/";
  static const String _assetPath = "assets/";
  static const String _donutsPath = "assets/donuts/";
  static const String _sidebarPath = "assets/sidebar/";
}
