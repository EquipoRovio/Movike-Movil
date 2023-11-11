import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class VentanadeinicioonelistItemWidget extends StatelessWidget {
  const VentanadeinicioonelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 81.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage13,
        height: 120.v,
        width: 81.h,
        radius: BorderRadius.circular(
          5.h,
        ),
        margin: EdgeInsets.only(bottom: 3.v),
      ),
    );
  }
}
