import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';
import 'package:movike_3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistroOneScreen extends StatelessWidget {
  RegistroOneScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgRegistro),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 5.v),
                          SizedBox(
                              height: 543.v,
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
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 30.v),
            decoration: AppDecoration.fillBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomTextFormField(
                  controller: emailController,
                  hintText: "Correo@correo.com",
                  hintStyle: CustomTextStyles.titleLargeWhiteA70001_1,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(20.h, 8.v, 7.h, 8.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFlag,
                          height: 36.v,
                          width: 53.h)),
                  prefixConstraints: BoxConstraints(maxHeight: 54.v),
                  contentPadding:
                      EdgeInsets.only(top: 14.v, right: 16.h, bottom: 14.v)),
              SizedBox(height: 13.v),
              CustomTextFormField(
                  controller: passwordController,
                  hintText: "********",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true),
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
                  imagePath: ImageConstant.imgNegroRojoAmarillo1,
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
                            imagePath: ImageConstant.imgNegroRojoAmarillo1,
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
                                              .imgNegroRojoAmarillo1,
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
                                                            .imgNegroRojoAmarillo1,
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
                                                                              .imgNegroRojoAmarillo1,
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
                                                                                imagePath: ImageConstant.imgNegroRojoAmarillo1,
                                                                                height: 334.v,
                                                                                width: 390.h,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 334.v,
                                                                                    width: double.maxFinite,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo1, height: 334.v, width: 390.h, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 334.v,
                                                                                              width: double.maxFinite,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo1, height: 334.v, width: 390.h, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 334.v,
                                                                                                        width: double.maxFinite,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo1, height: 334.v, width: 390.h, alignment: Alignment.center),
                                                                                                          CustomImageView(imagePath: ImageConstant.imgNegroRojoAmarillo1, height: 334.v, width: 390.h, alignment: Alignment.center)
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
  onTapCrearCuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bienvenidaScreen);
  }
}
