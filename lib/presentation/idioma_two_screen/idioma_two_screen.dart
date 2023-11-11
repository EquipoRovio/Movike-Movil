import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_outlined_button.dart';
import 'package:movike_3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IdiomaTwoScreen extends StatelessWidget {
  IdiomaTwoScreen({Key? key}) : super(key: key);

  TextEditingController portugusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup212),
                        fit: BoxFit.cover)),
                child: Container(
                    width: 393.h,
                    padding: EdgeInsets.symmetric(vertical: 42.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 56.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 28.h, right: 28.h, bottom: 5.v),
                                  child: Column(children: [
                                    _buildQuieresCambiarSection(context),
                                    SizedBox(height: 42.v),
                                    _buildPortugusSection(context)
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildGuardarCambiosSection(context)));
  }

  /// Section Widget
  Widget _buildQuieresCambiarSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 19.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 4.v),
          SizedBox(
              width: 301.h,
              child: Text("¿Quieres cambiar de iDioma?".toUpperCase(),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.displayMediumCousineRed800))
        ]));
  }

  /// Section Widget
  Widget _buildPortugusSection(BuildContext context) {
    return SizedBox(
        height: 304.v,
        width: 336.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 303.v,
                  width: 336.h,
                  decoration: AppDecoration.fillBlueGrayCc,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(left: 1.h, bottom: 101.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 17.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 17.v, bottom: 9.v),
                                                child: Text("Japonés",
                                                    style: theme
                                                        .textTheme.titleLarge)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLocation,
                                                height: 50.adaptSize,
                                                width: 50.adaptSize)
                                          ])),
                                  Divider()
                                ]))),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h, top: 51.v),
                        child: _buildIdiomaIngles(context, userName: "Frances",
                            onTapLocation: () {
                          onTapLocation(context);
                        })),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: _buildIdiomaIngles(context, userName: "Inglés",
                            onTapLocation: () {
                          onTapLocation1(context);
                        })),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(left: 1.h, top: 18.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Text("Español",
                                          style: theme.textTheme.titleLarge)),
                                  SizedBox(height: 9.v),
                                  Divider(),
                                  SizedBox(height: 49.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCheckcircle,
                                      height: 50.adaptSize,
                                      width: 50.adaptSize,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 18.h))
                                ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 51.v,
                  width: 335.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomTextFormField(
                        width: 335.h,
                        controller: portugusController,
                        hintText: "Portugués",
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.bottomCenter,
                        contentPadding: EdgeInsets.symmetric(horizontal: 6.h),
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineBlack,
                        filled: false),
                    CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 18.h))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h, bottom: 50.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 28.h, right: 18.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.v, bottom: 11.v),
                                  child: Text("Chino",
                                      style: theme.textTheme.titleLarge)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLocation,
                                  height: 50.adaptSize,
                                  width: 50.adaptSize)
                            ])),
                    Divider()
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildGuardarCambiosSection(BuildContext context) {
    return CustomOutlinedButton(
        text: "Guardar cambios",
        margin: EdgeInsets.only(left: 25.h, right: 24.h, bottom: 42.v),
        buttonStyle: CustomButtonStyles.outlineWhiteATL35,
        onPressed: () {
          onTapGuardarCambiosSection(context);
        });
  }

  /// Common widget
  Widget _buildIdiomaIngles(
    BuildContext context, {
    required String userName,
    Function? onTapLocation,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 50.adaptSize,
              width: 50.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 18.h),
              onTap: () {
                onTapLocation!.call();
              }),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text(userName,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.black900))),
          SizedBox(height: 9.v),
          Divider()
        ]);
  }

  /// Navigates to the idiomaOneScreen when the action is triggered.
  onTapLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.idiomaOneScreen);
  }

  /// Navigates to the idiomaScreen when the action is triggered.
  onTapLocation1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.idiomaScreen);
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapGuardarCambiosSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
