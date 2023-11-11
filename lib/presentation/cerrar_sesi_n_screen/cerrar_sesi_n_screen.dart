import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';

class CerrarSesiNScreen extends StatelessWidget {
  const CerrarSesiNScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.blueGray900,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.blueGray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup337),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: 393.h,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 238.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: CustomElevatedButton(
                                  height: 269.v,
                                  width: 331.h,
                                  text: "Esperamos que regreses pronto",
                                  margin: EdgeInsets.only(
                                      left: 31.h, right: 31.h, bottom: 345.v),
                                  buttonStyle:
                                      CustomButtonStyles.fillBlueGrayCc,
                                  buttonTextStyle: CustomTextStyles
                                      .displayMediumCousineBlack900Bold_1,
                                  onPressed: () {
                                    onTapEsperamosQueRegresesPronto(context);
                                  })))
                    ])))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapEsperamosQueRegresesPronto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
