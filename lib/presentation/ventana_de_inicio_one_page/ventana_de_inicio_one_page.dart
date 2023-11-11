import '../ventana_de_inicio_one_page/widgets/ventanadeinicioonegrid_item_widget.dart';
import '../ventana_de_inicio_one_page/widgets/ventanadeinicioonelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class VentanaDeInicioOnePage extends StatefulWidget {
  const VentanaDeInicioOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  VentanaDeInicioOnePageState createState() => VentanaDeInicioOnePageState();
}

class VentanaDeInicioOnePageState extends State<VentanaDeInicioOnePage>
    with AutomaticKeepAliveClientMixin<VentanaDeInicioOnePage> {
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
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage27,
                      height: 195.v,
                      width: 339.h,
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recomendadas",
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    _buildVentanadeinicioOneList(context),
                    SizedBox(height: 29.v),
                    _buildVentanadeinicioOneGrid(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVentanadeinicioOneList(BuildContext context) {
    return SizedBox(
      height: 123.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 1.h,
          right: 2.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 7.h,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return VentanadeinicioonelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildVentanadeinicioOneGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 121.v,
          crossAxisCount: 4,
          mainAxisSpacing: 14.h,
          crossAxisSpacing: 14.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return VentanadeinicioonegridItemWidget();
        },
      ),
    );
  }
}
