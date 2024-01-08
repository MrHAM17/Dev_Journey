import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class PostsaddeffectsItemWidget extends StatelessWidget {
  const PostsaddeffectsItemWidget({Key? key})
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
            CustomImageView(
              imagePath: ImageConstant.imgImage45,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage46,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(left: 20.h),
            ),
          ],
        ),
        SizedBox(height: 24.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage47,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage48,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(left: 20.h),
            ),
          ],
        ),
        SizedBox(height: 24.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage49,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage50,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(left: 20.h),
            ),
          ],
        ),
      ],
    );
  }
}
