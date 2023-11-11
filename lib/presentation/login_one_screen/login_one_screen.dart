import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_outlined_button.dart';
import 'package:movike_3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA70001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginThree),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
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
                        ]))))));
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
                  Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: CustomTextFormField(
                          controller: emailController,
                          hintText: "Correo@correo.com",
                          hintStyle: CustomTextStyles.titleLargeWhiteA70001_1,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(27.h, 10.v, 20.h, 10.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgMail,
                                  height: 32.v,
                                  width: 44.h)),
                          prefixConstraints: BoxConstraints(maxHeight: 54.v),
                          contentPadding: EdgeInsets.only(
                              top: 15.v, right: 4.h, bottom: 15.v))),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: CustomTextFormField(
                          controller: passwordController,
                          hintText: "******",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 4.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 42.v,
                                  width: 35.h)),
                          prefixConstraints: BoxConstraints(maxHeight: 54.v),
                          obscureText: true)),
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
            height: 321.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNegroRojoAmarillo321x390,
                  height: 321.v,
                  width: 390.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 321.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgNegroRojoAmarillo321x390,
                            height: 321.v,
                            width: 390.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 321.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgNegroRojoAmarillo321x390,
                                          height: 321.v,
                                          width: 390.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 321.v,
                                              width: double.maxFinite,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgNegroRojoAmarillo321x390,
                                                        height: 321.v,
                                                        width: 390.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height: 321.v,
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
                                                                              .imgNegroRojoAmarillo321x390,
                                                                      height:
                                                                          321.v,
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
                                                                          height: 321.v,
                                                                          width: double.maxFinite,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgNegroRojoAmarillo321x390,
                                                                                height: 321.v,
                                                                                width: 390.h,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 321.v,
                                                                                    width: double.maxFinite,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo321x390, height: 321.v, width: 390.h, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 321.v,
                                                                                              width: double.maxFinite,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo321x390, height: 321.v, width: 390.h, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 321.v,
                                                                                                        width: double.maxFinite,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo321x390, height: 321.v, width: 390.h, alignment: Alignment.center),
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo321x390, height: 321.v, width: 390.h, alignment: Alignment.center)
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

  /// Navigates to the bienvenidaScreen when the action is triggered.
  onTapIniciarSesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bienvenidaScreen);
  }

  /// Navigates to the registroScreen when the action is triggered.
  onTapTxtNotienescuen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
