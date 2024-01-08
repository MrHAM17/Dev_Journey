import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical5ItemWidget extends StatelessWidget {
  const Autolayoutvertical5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121.adaptSize,
      width: 121.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage121x121,
            height: 121.adaptSize,
            width: 121.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkPrimary,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 10.v,
              right: 10.h,
            ),
          ),
        ],
      ),
    );
  }
}
