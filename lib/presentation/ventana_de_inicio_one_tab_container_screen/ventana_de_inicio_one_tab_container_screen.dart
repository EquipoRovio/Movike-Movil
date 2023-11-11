import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';
import 'package:movike_3/presentation/ventana_de_inicio_one_page/ventana_de_inicio_one_page.dart';
import 'package:movike_3/presentation/ventana_de_inicio_two_page/ventana_de_inicio_two_page.dart';

class VentanaDeInicioOneTabContainerScreen extends StatefulWidget {
  const VentanaDeInicioOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VentanaDeInicioOneTabContainerScreenState createState() =>
      VentanaDeInicioOneTabContainerScreenState();
}

class VentanaDeInicioOneTabContainerScreenState
    extends State<VentanaDeInicioOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray800,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Container(
                height: 37.v,
                width: 296.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.black900,
                  labelStyle: TextStyle(
                    fontSize: 24.fSize,
                    fontFamily: 'Amaranth',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: appTheme.gray200,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 24.fSize,
                    fontFamily: 'Amaranth',
                    fontWeight: FontWeight.w700,
                  ),
                  indicatorPadding: EdgeInsets.all(
                    0.5.h,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.amber300,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Todo",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Series",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Películas",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 795.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    VentanaDeInicioOnePage(),
                    VentanaDeInicioOnePage(),
                    VentanaDeInicioTwoPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
