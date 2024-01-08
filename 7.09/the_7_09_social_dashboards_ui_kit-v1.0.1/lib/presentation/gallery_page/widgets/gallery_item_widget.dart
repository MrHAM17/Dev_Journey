import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  const GalleryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage99x99,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(right: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage12,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage13,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage14,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(right: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage15,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage16,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage17,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(right: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage18,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage19,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
