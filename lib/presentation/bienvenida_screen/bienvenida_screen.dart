import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_icon_button.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray900,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup236),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: 393.h,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 101.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.h, right: 15.h, bottom: 168.v),
                                  child: Column(children: [
                                    _buildWelcomeStack(context),
                                    SizedBox(height: 57.v),
                                    _buildDescriptionStack(context),
                                    SizedBox(height: 51.v),
                                    _buildPriceStack(context)
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildWelcomeStack(BuildContext context) {
    return SizedBox(
        height: 127.v,
        width: 326.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 326.h,
                  child: Text("BIENVENDO A MOVIKE".toUpperCase(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayLarge))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 326.h,
                  child: Text("BIENVENDO A MOVIKE".toUpperCase(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayLarge)))
        ]));
  }

  /// Section Widget
  Widget _buildDescriptionStack(BuildContext context) {
    return SizedBox(
        height: 292.v,
        width: 361.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 361.h,
                  child: Text(
                      "A continuación te daremos a\r elegir los géneros que más te gustan para saber que \nrecomendarte"
                          .toUpperCase(),
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.displayMediumCousineAmber300))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 361.h,
                  child: Text(
                      "A continuación te daremos a\r elegir los géneros que más te gustan para saber que \nrecomendarte"
                          .toUpperCase(),
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.displayMediumCousineAmber300)))
        ]));
  }

  /// Section Widget
  Widget _buildPriceStack(BuildContext context) {
    return SizedBox(
        height: 54.v,
        width: 360.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Text("COMENZAR".toUpperCase(),
                  style: CustomTextStyles.displayMediumCousineBlack900)),
          CustomIconButton(
              height: 53.v,
              width: 360.h,
              alignment: Alignment.center,
              onTap: () {
                onTapBtnBtnguardar(context);
              },
              child: CustomImageView()),
          Align(
              alignment: Alignment.topCenter,
              child: Text("COMENZAR".toUpperCase(),
                  style: CustomTextStyles.displayMediumCousineBlack900))
        ]));
  }

  /// Navigates to the encuestaScreen when the action is triggered.
  onTapBtnBtnguardar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.encuestaScreen);
  }
}
