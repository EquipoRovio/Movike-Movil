import '../ventana_de_inicio_screen/widgets/ventanadeinicioestrenos_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';

class VentanaDeInicioScreen extends StatelessWidget {
  const VentanaDeInicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray800,
            body: Container(
                width: 392.h,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 42.h, right: 36.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 94.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 2.v),
                                        decoration: AppDecoration.fillAmber
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("Todo",
                                            style: CustomTextStyles
                                                .headlineSmallAmaranthBlack900)),
                                    CustomElevatedButton(
                                        height: 36.v,
                                        width: 94.h,
                                        text: "Series",
                                        margin: EdgeInsets.only(
                                            left: 7.h, top: 1.v),
                                        buttonStyle:
                                            CustomButtonStyles.fillBlueGray,
                                        buttonTextStyle: CustomTextStyles
                                            .headlineSmallAmaranthGray100,
                                        onPressed: () {
                                          onTapSeries(context);
                                        }),
                                    CustomElevatedButton(
                                        height: 36.v,
                                        width: 94.h,
                                        text: "Películas",
                                        margin: EdgeInsets.only(
                                            left: 7.h, top: 1.v),
                                        buttonStyle:
                                            CustomButtonStyles.fillBlueGray,
                                        buttonTextStyle: CustomTextStyles
                                            .headlineSmallAmaranthGray200)
                                  ]))),
                      SizedBox(height: 23.v),
                      CustomImageView(
                          imagePath: ImageConstant.img136620001,
                          height: 195.v,
                          width: 338.h,
                          margin: EdgeInsets.only(left: 12.h)),
                      SizedBox(height: 6.v),
                      Text("Recomendadas",
                          style: theme.textTheme.headlineSmall),
                      Container(
                          height: 424.v,
                          width: 372.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 119.v),
                                    child: Text("Estrenos",
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineSmall))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 125.v),
                                    child: Text("Destacado",
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineSmall))),
                            _buildVentanaDeInicioEstrenos(context)
                          ])),
                      SizedBox(height: 5.v),
                      _buildHomeRequieresAyuda(context),
                      SizedBox(height: 3.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildVentanaDeInicioEstrenos(BuildContext context) {
    return StaggeredGridView.countBuilder(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 8,
        crossAxisSpacing: 108.02.h,
        mainAxisSpacing: 108.02.h,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(2);
        },
        itemCount: 12,
        itemBuilder: (context, index) {
          return VentanadeinicioestrenosItemWidget();
        });
  }

  /// Section Widget
  Widget _buildHomeRequieresAyuda(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 45.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHome,
                      height: 52.v,
                      width: 46.h,
                      margin: EdgeInsets.only(top: 44.v, bottom: 2.v)),
                  SizedBox(
                      height: 100.v,
                      width: 213.h,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 3.h, top: 14.v),
                                child: Text("¿Requieres ayuda?",
                                    style: CustomTextStyles
                                        .bodyLargeSalsaWhiteA70001))),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 50.v,
                            width: 59.h,
                            alignment: Alignment.topRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgSearch,
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 2.v),
                            onTap: () {
                              onTapImgSearch(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 40.h),
                            onTap: () {
                              onTapImgUser(context);
                            })
                      ]))
                ])));
  }

  /// Navigates to the ventanaDeInicioOneTabContainerScreen when the action is triggered.
  onTapSeries(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.ventanaDeInicioOneTabContainerScreen);
  }

  /// Navigates to the ventanaDeBusquedaContainerScreen when the action is triggered.
  onTapImgSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeBusquedaContainerScreen);
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapImgUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
