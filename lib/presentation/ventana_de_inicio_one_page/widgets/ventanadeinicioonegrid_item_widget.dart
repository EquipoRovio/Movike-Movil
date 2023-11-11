import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class VentanadeinicioonegridItemWidget extends StatelessWidget {
  const VentanadeinicioonegridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage10,
      height: 120.v,
      width: 73.h,
      radius: BorderRadius.circular(
        5.h,
      ),
    );
  }
}
