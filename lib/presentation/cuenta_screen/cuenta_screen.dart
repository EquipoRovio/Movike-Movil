import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';

class CuentaScreen extends StatelessWidget {
  const CuentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: Container(
                              height: 741.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(bottom: 36.v),
                              padding: EdgeInsets.symmetric(horizontal: 12.h),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 48.h),
                                            child: Text("Mi cuenta",
                                                style: CustomTextStyles
                                                    .displayMediumCousine))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 67.h, top: 283.v),
                                            child: Text("Cambiar foto",
                                                style: CustomTextStyles
                                                    .headlineLargeCousineRegular))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 187.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Correo",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .headlineLargeCousineRegular),
                                                  SizedBox(height: 13.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Text(
                                                          "Correo.correo @ gmail.com",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .titleLargeWhiteA70001_1)),
                                                  SizedBox(height: 25.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h),
                                                      child: Text("Contraseña",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .headlineLargeCousineRegular)),
                                                  SizedBox(height: 3.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 28.h),
                                                      child: Text("*******",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .headlineLargeCousineRegular))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            height: 181.v,
                                            width: 189.h,
                                            margin: EdgeInsets.only(
                                                left: 74.h, top: 72.v),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: 181.v,
                                                          width: 189.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .yellowA200,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          94.h)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          height: 181.v,
                                                          width: 189.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: 28
                                                                                .v),
                                                                        child: Text(
                                                                            "P",
                                                                            style:
                                                                                CustomTextStyles.cousineWhiteA70001))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: 181
                                                                            .v,
                                                                        width: 189
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.yellowA200,
                                                                            borderRadius: BorderRadius.circular(94.h))))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 113.h, top: 30.v),
                                            child: Text("P",
                                                style: CustomTextStyles
                                                    .creteRoundWhiteA70001))),
                                    CustomElevatedButton(
                                        height: 79.v,
                                        width: 344.h,
                                        text: "Eliminar cuenta",
                                        margin: EdgeInsets.only(left: 1.h),
                                        buttonStyle: CustomButtonStyles
                                            .fillOnPrimaryContainer,
                                        buttonTextStyle: CustomTextStyles
                                            .headlineLargeBlack900,
                                        onPressed: () {
                                          onTapEliminarCuenta(context);
                                        },
                                        alignment: Alignment.bottomLeft)
                                  ])))),
                  CustomImageView(
                      imagePath: ImageConstant.imgPoster2Byn2,
                      height: 844.v,
                      width: 390.h,
                      alignment: Alignment.center)
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapEliminarCuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
