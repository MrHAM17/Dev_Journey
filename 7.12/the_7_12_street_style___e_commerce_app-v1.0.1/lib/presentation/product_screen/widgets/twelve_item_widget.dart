import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class TwelveItemWidget extends StatelessWidget {
  const TwelveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle14,
      height: 400.v,
      width: 335.h,
      radius: BorderRadius.circular(
        30.h,
      ),
      margin: EdgeInsets.only(right: 390.h),
    );
  }
}
