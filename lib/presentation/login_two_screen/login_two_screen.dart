import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';

class LoginTwoScreen extends StatelessWidget {
  const LoginTwoScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 31.v),
            decoration: AppDecoration.fillBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 17.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage33,
                      height: 96.v,
                      width: 100.h),
                  SizedBox(height: 44.v),
                  SizedBox(
                      height: 70.v,
                      width: 200.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 200.h,
                                child: Text("Verifica tu información ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .headlineLargeCousine_1))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 200.h,
                                child: Text("Verifica tu información ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .headlineLargeCousine_1)))
                      ])),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      text: "Intentarlo nuevamente",
                      margin: EdgeInsets.only(right: 9.h),
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      onPressed: () {
                        onTapIntentarloNuevamente(context);
                      })
                ])));
  }

  /// Section Widget
  Widget _buildLogoSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 317.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNegroRojoAmarillo317x390,
                  height: 317.v,
                  width: 390.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 317.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgNegroRojoAmarillo317x390,
                            height: 317.v,
                            width: 390.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 317.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgNegroRojoAmarillo317x390,
                                          height: 317.v,
                                          width: 390.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 317.v,
                                              width: double.maxFinite,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgNegroRojoAmarillo317x390,
                                                        height: 317.v,
                                                        width: 390.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height: 317.v,
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
                                                                              .imgNegroRojoAmarillo317x390,
                                                                      height:
                                                                          317.v,
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
                                                                          height: 317.v,
                                                                          width: double.maxFinite,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgNegroRojoAmarillo317x390,
                                                                                height: 317.v,
                                                                                width: 390.h,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 317.v,
                                                                                    width: double.maxFinite,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo317x390, height: 317.v, width: 390.h, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 317.v,
                                                                                              width: double.maxFinite,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo317x390, height: 317.v, width: 390.h, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 317.v,
                                                                                                        width: double.maxFinite,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo317x390, height: 317.v, width: 390.h, alignment: Alignment.center),
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo317x390, height: 317.v, width: 390.h, alignment: Alignment.center)
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

  /// Navigates to the registroScreen when the action is triggered.
  onTapIntentarloNuevamente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
