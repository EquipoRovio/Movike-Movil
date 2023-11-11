import '../pantalla_de_agregaci_n_two_screen/widgets/drama2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_elevated_button.dart';
import 'package:movike_3/widgets/custom_outlined_button.dart';

class PantallaDeAgregaciNTwoScreen extends StatelessWidget {
  const PantallaDeAgregaciNTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPoster2Byn3844x390,
                      height: 844.v,
                      width: 390.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              height: 772.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(bottom: 34.v),
                              padding: EdgeInsets.symmetric(horizontal: 5.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomOutlinedButton(
                                        width: 344.h,
                                        text: "Guardar cambios",
                                        onPressed: () {
                                          onTapGuardarCambios(context);
                                        },
                                        alignment: Alignment.bottomCenter),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                      width: 325.h,
                                                      margin: EdgeInsets.only(
                                                          left: 17.h,
                                                          right: 23.h),
                                                      child: Text(
                                                          "Agrega los generos que mas te agraden",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .headlineLargeCousineRegular
                                                              .copyWith(
                                                                  height:
                                                                      1.67))),
                                                  SizedBox(height: 25.v),
                                                  CustomElevatedButton(
                                                      text: "10/10",
                                                      margin: EdgeInsets.only(
                                                          left: 3.h,
                                                          right: 18.h),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .displaySmallCousineBlack900,
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  SizedBox(height: 12.v),
                                                  _buildDrama(context)
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: 105.h,
                                            margin: EdgeInsets.only(
                                                right: 8.h, bottom: 104.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.h,
                                                vertical: 17.v),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Text("Historia",
                                                style: theme
                                                    .textTheme.bodyLarge))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 31.h, bottom: 129.v),
                                            child: Text("Comedia",
                                                style: theme
                                                    .textTheme.bodyLarge))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 128.v),
                                            child: Text("Romance",
                                                style: theme
                                                    .textTheme.bodyLarge))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 105.h,
                                            margin:
                                                EdgeInsets.only(bottom: 104.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h,
                                                vertical: 18.v),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Text("Animadas",
                                                style: theme
                                                    .textTheme.bodyLarge))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: 105.h,
                                            margin: EdgeInsets.only(
                                                left: 13.h, bottom: 104.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 13.h,
                                                vertical: 17.v),
                                            decoration: AppDecoration.fillYellow
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Text("Romance",
                                                style:
                                                    theme.textTheme.bodyLarge)))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildDrama(BuildContext context) {
    return Wrap(
        runSpacing: 22.v,
        spacing: 22.h,
        children: List<Widget>.generate(15, (index) => Drama2ItemWidget()));
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapGuardarCambios(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
