import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA70001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgRegistro),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 5.v),
                      SizedBox(
                          height: 543.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                _buildCrearCuentaSection(context),
                                _buildLogoSection(context)
                              ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildCrearCuentaSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 30.v),
            decoration: AppDecoration.fillBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              GestureDetector(
                  onTap: () {
                    onTapOne(context);
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.h, vertical: 1.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFlag,
                            height: 36.v,
                            width: 53.h,
                            margin: EdgeInsets.only(top: 8.v, bottom: 6.v)),
                        Container(
                            width: 131.h,
                            margin: EdgeInsets.only(left: 39.h),
                            child: Text("Escribe un correo ",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLargeWhiteA70001
                                    .copyWith(height: 1.14)))
                      ]))),
              SizedBox(height: 13.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 1.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPassword,
                        height: 24.v,
                        width: 49.h,
                        margin: EdgeInsets.only(top: 12.v, bottom: 13.v)),
                    Container(
                        width: 132.h,
                        margin: EdgeInsets.only(left: 51.h),
                        child: Text("Crea una contraseña",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleLargeWhiteA70001))
                  ])),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                  height: 54.v,
                  text: "Crear Cuenta",
                  buttonStyle: CustomButtonStyles.fillErrorContainer,
                  onPressed: () {
                    onTapCrearCuenta(context);
                  }),
              SizedBox(height: 15.v)
            ])));
  }

  /// Section Widget
  Widget _buildLogoSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 334.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNegroRojoAmarillo334x390,
                  height: 334.v,
                  width: 390.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 334.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgNegroRojoAmarillo334x390,
                            height: 334.v,
                            width: 390.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 334.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgNegroRojoAmarillo334x390,
                                          height: 334.v,
                                          width: 390.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 334.v,
                                              width: double.maxFinite,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgNegroRojoAmarillo334x390,
                                                        height: 334.v,
                                                        width: 390.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height: 334.v,
                                                            width: double
                                                                .maxFinite,
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgNegroRojoAmarillo334x390,
                                                                      height:
                                                                          334.v,
                                                                      width:
                                                                          390.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: SizedBox(
                                                                          height: 334.v,
                                                                          width: double.maxFinite,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgNegroRojoAmarillo334x390,
                                                                                height: 334.v,
                                                                                width: 390.h,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 334.v,
                                                                                    width: double.maxFinite,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo334x390, height: 334.v, width: 390.h, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 334.v,
                                                                                              width: double.maxFinite,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo334x390, height: 334.v, width: 390.h, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 334.v,
                                                                                                        width: double.maxFinite,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo334x390, height: 334.v, width: 390.h, alignment: Alignment.center),
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo334x390, height: 334.v, width: 390.h, alignment: Alignment.center)
                                                                                                        ])))
                                                                                              ])))
                                                                                    ])))
                                                                          ])))
                                                                ])))
                                                  ])))
                                    ])))
                      ])))
            ])));
  }

  /// Navigates to the registroOneScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroOneScreen);
  }

  /// Navigates to the loginTwoScreen when the action is triggered.
  onTapCrearCuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginTwoScreen);
  }
}
