import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class WidgetlistsectionItemWidget extends StatelessWidget {
  const WidgetlistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage18,
        height: 128.v,
        width: 91.h,
        radius: BorderRadius.circular(
          5.h,
        ),
        margin: EdgeInsets.only(bottom: 3.v),
      ),
    );
  }
}
