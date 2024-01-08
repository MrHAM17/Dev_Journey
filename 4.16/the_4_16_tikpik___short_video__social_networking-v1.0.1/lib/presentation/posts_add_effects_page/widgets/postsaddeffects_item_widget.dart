import '../controller/posts_add_effects_controller.dart';
import '../models/postsaddeffects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class PostsaddeffectsItemWidget extends StatelessWidget {
  PostsaddeffectsItemWidget(
    this.postsaddeffectsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostsaddeffectsItemModel postsaddeffectsItemModelObj;

  var controller = Get.find<PostsAddEffectsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: postsaddeffectsItemModelObj.image!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: postsaddeffectsItemModelObj.image1!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
                margin: EdgeInsets.only(left: 20.h),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: postsaddeffectsItemModelObj.image2!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: postsaddeffectsItemModelObj.image3!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
                margin: EdgeInsets.only(left: 20.h),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: postsaddeffectsItemModelObj.image4!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: postsaddeffectsItemModelObj.image5!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
                margin: EdgeInsets.only(left: 20.h),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
