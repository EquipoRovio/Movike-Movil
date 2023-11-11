import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class EstrenoslistsectionItemWidget extends StatelessWidget {
  const EstrenoslistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage13,
        height: 125.v,
        width: 85.h,
        radius: BorderRadius.circular(
          5.h,
        ),
        margin: EdgeInsets.only(bottom: 1.v),
      ),
    );
  }
}
