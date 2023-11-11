import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/presentation/ventana_de_busqueda_page/ventana_de_busqueda_page.dart';
import 'package:movike_3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class VentanaDeBusquedaContainerScreen extends StatelessWidget {
  VentanaDeBusquedaContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray800,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.ventanaDeBusquedaPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 54.h, right: 48.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeblack900:
        return "/";
      case BottomBarEnum.Searchwhitea70001:
        return AppRoutes.ventanaDeBusquedaPage;
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.ventanaDeBusquedaPage:
        return VentanaDeBusquedaPage();
      default:
        return DefaultWidget();
    }
  }
}
