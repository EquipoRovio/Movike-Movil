import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

class VentanaDeBusquedaOneScreen extends StatelessWidget {
  const VentanaDeBusquedaOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray800,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArrowOneRow(context),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 37.h),
                          child: Row(children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage18,
                                      height: 79.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h)),
                                  SizedBox(height: 13.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage19,
                                      height: 71.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h)),
                                  SizedBox(height: 11.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage20,
                                      height: 74.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h)),
                                  SizedBox(height: 15.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage21,
                                      height: 73.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h)),
                                  SizedBox(height: 11.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage13,
                                      height: 73.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h),
                                      alignment: Alignment.center),
                                  SizedBox(height: 18.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage16,
                                      height: 74.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h),
                                      alignment: Alignment.center),
                                  SizedBox(height: 16.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage17,
                                      height: 71.v,
                                      width: 50.h,
                                      radius: BorderRadius.circular(5.h),
                                      alignment: Alignment.center)
                                ]),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 9.h, top: 8.v, bottom: 12.v),
                                    child: Column(children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 4.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Los busca mundos",
                                                          style: CustomTextStyles
                                                              .titleLargeScadaWhiteA70001),
                                                      SizedBox(height: 4.v),
                                                      Text(
                                                          "Serie-Autor..........",
                                                          style: theme.textTheme
                                                              .bodySmall),
                                                      SizedBox(height: 38.v),
                                                      SizedBox(
                                                          width: 154.h,
                                                          child: Text(
                                                              "Padre no hay mas \nque Uno",
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .titleLargeScadaWhiteA70001)),
                                                      Text(
                                                          "Serie-Autor..........",
                                                          style: theme.textTheme
                                                              .bodySmall)
                                                    ]),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 16.v),
                                                    child: Column(children: [
                                                      Text("X",
                                                          style: theme.textTheme
                                                              .displaySmall),
                                                      SizedBox(height: 33.v),
                                                      Text("X",
                                                          style: theme.textTheme
                                                              .displaySmall)
                                                    ]))
                                              ])),
                                      SizedBox(height: 16.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 4.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: 155.h,
                                                    margin: EdgeInsets.only(
                                                        top: 1.v),
                                                    child: Text(
                                                        "Padre no hay mas\n que uno 2",
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .titleLargeScadaWhiteA70001)),
                                                Container(
                                                    height: 51.v,
                                                    width: 23.h,
                                                    margin: EdgeInsets.only(
                                                        left: 65.h,
                                                        bottom: 2.v),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text("X",
                                                                  style: theme
                                                                      .textTheme
                                                                      .displaySmall)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text("X",
                                                                  style: theme
                                                                      .textTheme
                                                                      .displaySmall))
                                                        ]))
                                              ])),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Serie-Autor..........",
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      SizedBox(height: 22.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 14.v),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Loco por ella",
                                                          style: CustomTextStyles
                                                              .titleLargeScadaWhiteA70001),
                                                      SizedBox(height: 4.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(
                                                              "pelicula-Autor..........",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)),
                                                      SizedBox(height: 44.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(
                                                              "No se aceptan",
                                                              style: CustomTextStyles
                                                                  .titleLargeScadaWhiteA70001)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(
                                                              "deboluciones",
                                                              style: CustomTextStyles
                                                                  .titleLargeScadaWhiteA70001)),
                                                      SizedBox(height: 3.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.h),
                                                          child: Text(
                                                              "Pelicula-Autor..........",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)),
                                                      SizedBox(height: 27.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text("My SPY",
                                                              style: CustomTextStyles
                                                                  .titleLargeScadaWhiteA70001)),
                                                      SizedBox(height: 2.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(
                                                              "Pelicula-Autor..........",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)),
                                                      SizedBox(height: 48.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(
                                                              "Campeones",
                                                              style: CustomTextStyles
                                                                  .titleLargeScadaWhiteA70001Bold)),
                                                      SizedBox(height: 2.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 6.h),
                                                          child: Text(
                                                              "Pelicula-Autor..........",
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ])),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 6.v),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("X",
                                                          style: theme.textTheme
                                                              .displaySmall),
                                                      SizedBox(height: 27.v),
                                                      Text("X",
                                                          style: theme.textTheme
                                                              .displaySmall),
                                                      SizedBox(height: 51.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text("X",
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall)),
                                                      SizedBox(height: 37.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text("X",
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall))
                                                    ]))
                                          ])
                                    ])))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildHomeRow(context)));
  }

  /// Section Widget
  Widget _buildArrowOneRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 13.h),
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 9.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrow1,
              height: 1.v,
              width: 44.h,
              margin: EdgeInsets.only(top: 10.v, bottom: 9.v),
              onTap: () {
                onTapImgArrowOne(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text("Consulta de busqueda",
                  style: theme.textTheme.titleMedium))
        ]));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 54.h, right: 48.h, bottom: 13.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHomeBlack900,
              height: 52.v,
              width: 46.h,
              margin: EdgeInsets.symmetric(vertical: 2.v),
              onTap: () {
                onTapImgHome(context);
              }),
          Spacer(flex: 52),
          CustomImageView(
              imagePath: ImageConstant.imgSearchWhiteA70001,
              height: 52.adaptSize,
              width: 52.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 2.v)),
          Spacer(flex: 47),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 58.adaptSize,
              width: 58.adaptSize,
              onTap: () {
                onTapImgUser(context);
              })
        ]));
  }

  /// Navigates to the ventanaDeBusquedaContainerScreen when the action is triggered.
  onTapImgArrowOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeBusquedaContainerScreen);
  }

  /// Navigates to the ventanaDeInicioScreen when the action is triggered.
  onTapImgHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeInicioScreen);
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapImgUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
