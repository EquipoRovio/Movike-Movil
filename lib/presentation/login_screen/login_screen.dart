import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_outlined_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgLoginThree),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 5.v),
                      SizedBox(
                          height: 678.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                _buildLoginForm(context),
                                _buildLogoSection(context)
                              ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 24.h, right: 30.h),
            padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 30.v),
            decoration: AppDecoration.fillBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        onTapOne(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.h, vertical: 10.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMail,
                                    height: 32.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(left: 23.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 21.h, top: 6.v, bottom: 3.v),
                                    child: Text("Ingresa tu cuenta",
                                        style: CustomTextStyles
                                            .titleLargeWhiteA70001_1))
                              ]))),
                  SizedBox(height: 13.v),
                  Container(
                      margin: EdgeInsets.only(left: 6.h),
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 42.v,
                                width: 35.h,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 8.v, bottom: 12.v),
                                child: Text("Contraseña",
                                    style:
                                        CustomTextStyles.titleLargeWhiteA70001))
                          ])),
                  SizedBox(height: 13.v),
                  CustomOutlinedButton(
                      height: 54.v,
                      text: "Iniciar Sesión",
                      margin: EdgeInsets.only(left: 6.h),
                      buttonStyle: CustomButtonStyles.outlineBlackTL20,
                      buttonTextStyle: CustomTextStyles.headlineSmallBold,
                      onPressed: () {
                        onTapIniciarSesin(context);
                      }),
                  SizedBox(height: 24.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtNotienescuen(context);
                      },
                      child: SizedBox(
                          width: 184.h,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "¿No tienes cuenta?\r\n",
                                    style:
                                        CustomTextStyles.headlineLargeCousine),
                                TextSpan(
                                    text: "Regístrate",
                                    style: CustomTextStyles.headlineLargeCousine
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.center))),
                  SizedBox(height: 3.v)
                ])));
  }

  /// Section Widget
  Widget _buildLogoSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 340.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNegroRojoAmarillo340x390,
                  height: 340.v,
                  width: 390.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 340.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgNegroRojoAmarillo340x390,
                            height: 340.v,
                            width: 390.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 340.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgNegroRojoAmarillo340x390,
                                          height: 340.v,
                                          width: 390.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 340.v,
                                              width: double.maxFinite,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgNegroRojoAmarillo340x390,
                                                        height: 340.v,
                                                        width: 390.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height: 340.v,
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
                                                                              .imgNegroRojoAmarillo340x390,
                                                                      height:
                                                                          340.v,
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
                                                                          height: 340.v,
                                                                          width: double.maxFinite,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgNegroRojoAmarillo340x390,
                                                                                height: 340.v,
                                                                                width: 390.h,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 340.v,
                                                                                    width: double.maxFinite,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo340x390, height: 340.v, width: 390.h, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 340.v,
                                                                                              width: double.maxFinite,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo340x390, height: 340.v, width: 390.h, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 340.v,
                                                                                                        width: double.maxFinite,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo340x390, height: 340.v, width: 390.h, alignment: Alignment.center),
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo340x390, height: 340.v, width: 390.h, alignment: Alignment.center)
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

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }

  /// Navigates to the loginThreeScreen when the action is triggered.
  onTapIniciarSesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginThreeScreen);
  }

  /// Navigates to the registroScreen when the action is triggered.
  onTapTxtNotienescuen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
