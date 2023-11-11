import '../ventana_de_busqueda_page/widgets/estrenoslistsection_item_widget.dart';
import '../ventana_de_busqueda_page/widgets/widgetlistsection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class VentanaDeBusquedaPage extends StatelessWidget {
  VentanaDeBusquedaPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController imageTwentySixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray800,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBluegray800,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 23.v,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 11.h,
                  ),
                  child: CustomTextFormField(
                    controller: imageTwentySixController,
                    hintText: "Películas series && mas",
                    hintStyle: theme.textTheme.titleMedium!,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.only(
                        left: 7.h,
                        right: 10.h,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage26,
                        height: 40.v,
                        width: 34.h,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 40.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                    fillColor: appTheme.whiteA70001,
                  ),
                ),
                SizedBox(height: 18.v),
                _buildMasPopularSection(context),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "Destacado",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildWidgetListSection(context),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Estrenos",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildEstrenosListSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMasPopularSection(BuildContext context) {
    return SizedBox(
      height: 307.v,
      width: 369.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(
                "Mas popular",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage30,
            height: 280.v,
            width: 369.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetListSection(BuildContext context) {
    return SizedBox(
      height: 131.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 4.h,
          right: 1.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 6.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return WidgetlistsectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEstrenosListSection(BuildContext context) {
    return SizedBox(
      height: 126.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 6.h,
          right: 2.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 3.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return EstrenoslistsectionItemWidget();
        },
      ),
    );
  }
}
