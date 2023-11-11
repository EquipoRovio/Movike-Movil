import '../encuesta_one_screen/widgets/genrechipview2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';
import 'package:movike_3/widgets/custom_icon_button.dart';

class EncuestaOneScreen extends StatelessWidget {
  const EncuestaOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.blueGray90001,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.blueGray90001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup261),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: 393.h,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 65.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 10.h, bottom: 96.v),
                                  child: Column(children: [
                                    Container(
                                        width: 301.h,
                                        margin: EdgeInsets.only(
                                            left: 30.h, right: 35.h),
                                        child: Text(
                                            "ELIGE LAS OPCIONES\nQUE MÁS TE\nAGRADEN"
                                                .toUpperCase(),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .displayMediumCousineAmber300_1)),
                                    SizedBox(height: 20.v),
                                    _buildSaveButtonStack(context),
                                    SizedBox(height: 59.v),
                                    _buildGenreChipView(context),
                                    SizedBox(height: 61.v),
                                    CustomElevatedButton(
                                        height: 53.v,
                                        text: "GUARDAR",
                                        margin: EdgeInsets.only(left: 5.h),
                                        buttonStyle:
                                            CustomButtonStyles.fillAmber,
                                        buttonTextStyle: CustomTextStyles
                                            .displayMediumCousineBlack900Bold,
                                        onPressed: () {
                                          onTapGUARDAR(context);
                                        })
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildSaveButtonStack(BuildContext context) {
    return SizedBox(
        height: 57.v,
        width: 360.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomIconButton(
              height: 53.v,
              width: 360.h,
              alignment: Alignment.center,
              child: CustomImageView()),
          Align(
              alignment: Alignment.center,
              child: Text("5/5".toUpperCase(),
                  style: CustomTextStyles.displayMediumCousineBlack900_1))
        ]));
  }

  /// Section Widget
  Widget _buildGenreChipView(BuildContext context) {
    return Wrap(
        runSpacing: 22.v,
        spacing: 22.h,
        children:
            List<Widget>.generate(8, (index) => Genrechipview2ItemWidget()));
  }

  /// Navigates to the ventanaDeInicioScreen when the action is triggered.
  onTapGUARDAR(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeInicioScreen);
  }
}
