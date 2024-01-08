import '../models/postsaddeffects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class PostsaddeffectsItemWidget extends StatelessWidget {
  PostsaddeffectsItemWidget(
    this.postsaddeffectsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostsaddeffectsItemModel postsaddeffectsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: postsaddeffectsItemModelObj?.image,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            CustomImageView(
              imagePath: postsaddeffectsItemModelObj?.image1,
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
              imagePath: postsaddeffectsItemModelObj?.image2,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            CustomImageView(
              imagePath: postsaddeffectsItemModelObj?.image3,
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
              imagePath: postsaddeffectsItemModelObj?.image4,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            CustomImageView(
              imagePath: postsaddeffectsItemModelObj?.image5,
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
