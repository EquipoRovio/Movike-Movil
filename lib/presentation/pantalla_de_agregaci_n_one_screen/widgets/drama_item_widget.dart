import 'package:flutter/material.dart';
import 'package:movike_3/core/app_export.dart';

// ignore: must_be_immutable
class DramaItemWidget extends StatelessWidget {
  const DramaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.all(19.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Drama",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Cousine',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.yellow400,
      selectedColor: appTheme.whiteA700,
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
