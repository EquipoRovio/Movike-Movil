import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class RecommendedwidgetlistItemWidget extends StatelessWidget {
  const RecommendedwidgetlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84.h,
      child: Align(
        alignment: Alignment.topRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgImage14,
          height: 120.v,
          width: 84.h,
          radius: BorderRadius.circular(
            5.h,
          ),
          margin: EdgeInsets.only(top: 3.v),
        ),
      ),
    );
  }
}
