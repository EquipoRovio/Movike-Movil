import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

class VentanaDeConfiguracionScreen extends StatelessWidget {
  const VentanaDeConfiguracionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 19.h, right: 19.h, bottom: 140.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 85.v),
                                _buildAgregarGenerosRow(context),
                                SizedBox(height: 17.v),
                                _buildMiCuentaRow(context),
                                SizedBox(height: 31.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, right: 14.h),
                                    child: _buildAyudaYOpiniN(context,
                                        userName: "Politica de privacidad",
                                        userText: ">",
                                        userText2: ">")),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 5.h, right: 14.h),
                                    child: _buildCerrarSesiN(context,
                                        userText: "Idioma",
                                        userText1: ">",
                                        userText2: ">", onTapText: () {
                                      onTapTxtText2(context);
                                    })),
                                SizedBox(height: 22.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, right: 14.h),
                                    child: _buildAyudaYOpiniN(context,
                                        userName: "Ayuda y opiniòn",
                                        userText: ">",
                                        userText2: ">", onTapText: () {
                                      onTapTxtText3(context);
                                    })),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 5.h, right: 14.h),
                                    child: _buildCerrarSesiN(context,
                                        userText: "Cerrar sesiòn",
                                        userText1: ">",
                                        userText2: ">", onTapText: () {
                                      onTapTxtText4(context);
                                    }))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: mediaQueryData.size.height,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: appTheme.yellowA200,
                              borderRadius: BorderRadius.circular(49.h)))),
                  Align(
                      alignment: Alignment.center,
                      child: Text("P",
                          style: CustomTextStyles.amaranthWhiteA70001)),
                  Align(
                      alignment: Alignment.center,
                      child: Text("Configuraciòn",
                          style: theme.textTheme.headlineSmall)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: mediaQueryData.size.height,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: appTheme.yellowA200,
                              borderRadius: BorderRadius.circular(49.h)))),
                  Align(
                      alignment: Alignment.center,
                      child: Text("P",
                          style: CustomTextStyles.amaranthWhiteA70001)),
                  CustomImageView(
                      imagePath: ImageConstant.imgPoster2Byn3,
                      height: 844.v,
                      width: 390.h,
                      alignment: Alignment.center)
                ]))));
  }

  /// Section Widget
  Widget _buildAgregarGenerosRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 21.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 12.v, bottom: 20.v),
                      child: Text("Agregar generos",
                          style: theme.textTheme.headlineSmall)),
                  _buildFourteen(context, userName: ">", userLabel: ">",
                      onTapText: () {
                    onTapTxtText(context);
                  })
                ])));
  }

  /// Section Widget
  Widget _buildMiCuentaRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 14.v, bottom: 18.v),
                      child: Text("Mi cuenta",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall)),
                  _buildFourteen(context, userName: ">", userLabel: ">",
                      onTapText: () {
                    onTapTxtText1(context);
                  })
                ])));
  }

  /// Common widget
  Widget _buildFourteen(
    BuildContext context, {
    required String userName,
    required String userLabel,
    Function? onTapText,
  }) {
    return SizedBox(
        height: 62.v,
        width: 31.h,
        child: Stack(alignment: Alignment.center, children: [
          GestureDetector(onTap: () {
            onTapText!.call();
          }),
          Align(
              alignment: Alignment.center,
              child: Text(userName,
                  style: theme.textTheme.displayMedium!
                      .copyWith(color: appTheme.whiteA70001))),
          Align(
              alignment: Alignment.center,
              child: Text(userLabel,
                  style: theme.textTheme.displayMedium!
                      .copyWith(color: appTheme.whiteA70001)))
        ]));
  }

  /// Common widget
  Widget _buildAyudaYOpiniN(
    BuildContext context, {
    required String userName,
    required String userText,
    required String userText2,
    Function? onTapText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 19.v, bottom: 13.v),
          child: Text(userName,
              style: theme.textTheme.headlineSmall!
                  .copyWith(color: appTheme.whiteA70001))),
      SizedBox(
          height: 62.v,
          width: 31.h,
          child: Stack(alignment: Alignment.center, children: [
            GestureDetector(onTap: () {
              onTapText!.call();
            }),
            Align(
                alignment: Alignment.center,
                child: Text(userText,
                    style: theme.textTheme.displayMedium!
                        .copyWith(color: appTheme.whiteA70001))),
            Align(
                alignment: Alignment.center,
                child: Text(userText2,
                    style: theme.textTheme.displayMedium!
                        .copyWith(color: appTheme.whiteA70001)))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildCerrarSesiN(
    BuildContext context, {
    required String userText,
    required String userText1,
    required String userText2,
    Function? onTapText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 19.v),
              child: Text(userText,
                  style: theme.textTheme.headlineSmall!
                      .copyWith(color: appTheme.whiteA70001))),
          SizedBox(
              height: 62.v,
              width: 31.h,
              child: Stack(alignment: Alignment.center, children: [
                GestureDetector(onTap: () {
                  onTapText!.call();
                }),
                Align(
                    alignment: Alignment.center,
                    child: Text(userText1,
                        style: theme.textTheme.displayMedium!
                            .copyWith(color: appTheme.whiteA70001))),
                Align(
                    alignment: Alignment.center,
                    child: Text(userText2,
                        style: theme.textTheme.displayMedium!
                            .copyWith(color: appTheme.whiteA70001)))
              ]))
        ]);
  }

  /// Navigates to the pantallaDeAgregaciNScreen when the action is triggered.
  onTapTxtText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaDeAgregaciNScreen);
  }

  /// Navigates to the cuentaScreen when the action is triggered.
  onTapTxtText1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cuentaScreen);
  }

  /// Navigates to the idiomaScreen when the action is triggered.
  onTapTxtText2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.idiomaScreen);
  }

  /// Navigates to the pantallaDeOpciNScreen when the action is triggered.
  onTapTxtText3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaDeOpciNScreen);
  }

  /// Navigates to the cerrarSesiNScreen when the action is triggered.
  onTapTxtText4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cerrarSesiNScreen);
  }
}
