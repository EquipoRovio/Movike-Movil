import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class Genrechipview2ItemWidget extends StatelessWidget {
  const Genrechipview2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Drama",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 22.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.whiteA700,
      selectedColor: appTheme.yellow400,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
