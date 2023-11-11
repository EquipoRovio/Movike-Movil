import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

class PantallaDeOpciNScreen extends StatelessWidget {
  const PantallaDeOpciNScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgPantallaDeOpciN),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 14.h, top: 86.v, right: 14.h),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                          width: 291.h,
                          margin: EdgeInsets.only(left: 32.h, right: 37.h),
                          child: Text(
                              "Tiene alguna queja o sugerencia\n!Comentala aquì¡",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .displayMediumCousineAmber300Bold
                                  .copyWith(height: 1.25))),
                      SizedBox(height: 59.v),
                      _buildSixtyEight(context),
                      SizedBox(height: 4.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildSixtyEight(BuildContext context) {
    return Container(
        width: 356.h,
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 21.v),
        decoration: AppDecoration.outlineWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Escribela aqui...",
                  style: CustomTextStyles.titleLargeYellow200),
              SizedBox(height: 99.v),
              CustomImageView(
                  imagePath: ImageConstant.imgSend,
                  height: 45.v,
                  width: 54.h,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapImgSend(context);
                  }),
              SizedBox(height: 5.v)
            ]));
  }

  /// Navigates to the pantallaDeComentarioScreen when the action is triggered.
  onTapImgSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaDeComentarioScreen);
  }
}
