import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

class PantallaDeAgradecimientoScreen extends StatelessWidget {
  const PantallaDeAgradecimientoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 852.v,
                width: 393.h,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage32,
                      height: 862.v,
                      width: 393.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage31,
                              height: 95.v,
                              width: 382.h,
                              margin:
                                  EdgeInsets.only(left: 11.h, bottom: 388.v),
                              onTap: () {
                                onTapImgImageThirtyOne(context);
                              })))
                ]))));
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapImgImageThirtyOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
