import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class TrendingwidgetlistItemWidget extends StatelessWidget {
  const TrendingwidgetlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.h,
      child: Align(
        alignment: Alignment.topRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgImage10,
          height: 120.v,
          width: 73.h,
          radius: BorderRadius.circular(
            5.h,
          ),
          margin: EdgeInsets.only(bottom: 9.v),
        ),
      ),
    );
  }
}
