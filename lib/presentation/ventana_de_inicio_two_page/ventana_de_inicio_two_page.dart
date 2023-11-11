import '../ventana_de_inicio_two_page/widgets/newreleasewidgetlist_item_widget.dart';
import '../ventana_de_inicio_two_page/widgets/recommendedwidgetlist_item_widget.dart';
import '../ventana_de_inicio_two_page/widgets/trendingwidgetlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

class VentanaDeInicioTwoPage extends StatefulWidget {
  const VentanaDeInicioTwoPage({Key? key}) : super(key: key);

  @override
  VentanaDeInicioTwoPageState createState() => VentanaDeInicioTwoPageState();
}

class VentanaDeInicioTwoPageState extends State<VentanaDeInicioTwoPage>
    with AutomaticKeepAliveClientMixin<VentanaDeInicioTwoPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray800,
            body: Container(
                width: 392.h,
                decoration: AppDecoration.fillBluegray800,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage28,
                            height: 195.v,
                            width: 339.h),
                        SizedBox(height: 14.v),
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Column(children: [
                                        Text("Recomendadas",
                                            style:
                                                theme.textTheme.headlineSmall),
                                        SizedBox(height: 2.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                                height: 145.v,
                                                width: 174.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h),
                                                              child: Text(
                                                                  "Destacado",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      _buildRecommendedWidgetList(
                                                          context)
                                                    ]))),
                                        SizedBox(height: 1.v),
                                        SizedBox(
                                            height: 276.v,
                                            width: 180.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text("Estrenos",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .headlineSmall)),
                                                  _buildNewReleaseWidgetList(
                                                      context),
                                                  _buildTrendingWidgetList(
                                                      context)
                                                ]))
                                      ])),
                                  Padding(
                                      padding: EdgeInsets.only(top: 28.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildRecommendedWidgetListHorizontalScroll(
                                                context),
                                            SizedBox(height: 26.v),
                                            _buildTrendingWidgetListHorizontalScroll(
                                                context),
                                            SizedBox(height: 26.v),
                                            _buildNewReleaseWidgetListHorizontalScroll(
                                                context)
                                          ]))
                                ])),
                        _buildHomeRow(context)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildRecommendedWidgetList(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: SizedBox(
            height: 148.v,
            child: ListView.separated(
                padding: EdgeInsets.only(bottom: 25.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 9.h);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return RecommendedwidgetlistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildNewReleaseWidgetList(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
            height: 277.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 3.h, top: 155.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 9.h);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return NewreleasewidgetlistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildTrendingWidgetList(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: SizedBox(
            height: 276.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 1.h, bottom: 147.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15.h);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return TrendingwidgetlistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildRecommendedWidgetListHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 6.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage14,
              height: 120.v,
              width: 84.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(top: 3.v)),
          CustomImageView(
              imagePath: ImageConstant.imgImage16,
              height: 120.v,
              width: 80.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(left: 10.h, top: 3.v)),
          CustomImageView(
              imagePath: ImageConstant.imgImage17,
              height: 120.v,
              width: 83.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(left: 17.h, top: 3.v)),
          CustomImageView(
              imagePath: ImageConstant.imgImage21,
              height: 120.v,
              width: 81.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(left: 7.h, bottom: 3.v))
        ])));
  }

  /// Section Widget
  Widget _buildTrendingWidgetListHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage10,
                  height: 120.v,
                  width: 73.h,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(bottom: 9.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgImage15,
                  height: 120.v,
                  width: 86.h,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 1.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgImage19,
                  height: 120.v,
                  width: 84.h,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(left: 12.h, top: 8.v, bottom: 1.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgImage20,
                  height: 120.v,
                  width: 80.h,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(left: 15.h, top: 8.v))
            ])));
  }

  /// Section Widget
  Widget _buildNewReleaseWidgetListHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 1.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage13,
              height: 120.v,
              width: 81.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(bottom: 1.v)),
          CustomImageView(
              imagePath: ImageConstant.imgImage18,
              height: 120.v,
              width: 85.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(left: 10.h, bottom: 2.v)),
          CustomImageView(
              imagePath: ImageConstant.imgImage11,
              height: 120.v,
              width: 80.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(left: 7.h)),
          CustomImageView(
              imagePath: ImageConstant.imgImage12,
              height: 120.v,
              width: 84.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(left: 16.h, bottom: 2.v))
        ])));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 44.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHome,
                      height: 52.v,
                      width: 46.h,
                      margin: EdgeInsets.only(top: 47.v, bottom: 3.v),
                      onTap: () {
                        onTapImgHome(context);
                      }),
                  SizedBox(
                      height: 103.v,
                      width: 214.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            alignment: Alignment.topRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgSearch,
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 3.v),
                            onTap: () {
                              onTapImgSearch(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 41.h),
                            onTap: () {
                              onTapImgUser(context);
                            }),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 5.h, top: 14.v),
                                child: Text("¿Requieres ayuda?",
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyLargeSalsaWhiteA70001)))
                      ]))
                ])));
  }

  /// Navigates to the ventanaDeInicioScreen when the action is triggered.
  onTapImgHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeInicioScreen);
  }

  /// Navigates to the ventanaDeBusquedaContainerScreen when the action is triggered.
  onTapImgSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeBusquedaContainerScreen);
  }

  /// Navigates to the ventanaDeConfiguracionScreen when the action is triggered.
  onTapImgUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ventanaDeConfiguracionScreen);
  }
}
