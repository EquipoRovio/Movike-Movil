import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_outlined_button.dart';
import 'package:movike_3/widgets/custom_radio_button.dart';
import 'package:movike_3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IdiomaScreen extends StatelessWidget {
  IdiomaScreen({Key? key}) : super(key: key);

  String radioGroup = "";

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
                                    _buildIdiomaSection(context)
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
  Widget _buildIdiomaSection(BuildContext context) {
    return SizedBox(
        height: 304.v,
        width: 336.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  decoration: AppDecoration.fillBlueGrayCc,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomRadioButton(
                        width: 335.h,
                        text: "Español",
                        value: "Español",
                        groupValue: radioGroup,
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.h, vertical: 10.v),
                        isRightCheck: true,
                        onChange: (value) {
                          radioGroup = value;
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 24.h, right: 18.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 17.v, bottom: 9.v),
                                  child: Text("Inglés",
                                      style: theme.textTheme.titleLarge)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLocation,
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  onTap: () {
                                    onTapImgLocation(context);
                                  })
                            ])),
                    Divider(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: _buildJaponS(context, userName: "Frances")),
                    Divider(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: _buildJaponS(context, userName: "Japonés")),
                    SizedBox(height: 100.v),
                    Divider()
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
  Widget _buildJaponS(
    BuildContext context, {
    required String userName,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 17.v, bottom: 9.v),
          child: Text(userName,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900))),
      CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 50.adaptSize,
          width: 50.adaptSize)
    ]);
  }

  /// Navigates to the idiomaOneScreen when the action is triggered.
  onTapImgLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.idiomaOneScreen);
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapGuardarCambiosSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
