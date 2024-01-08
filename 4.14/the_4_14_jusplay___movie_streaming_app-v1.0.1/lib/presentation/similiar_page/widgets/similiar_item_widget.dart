import '../controller/similiar_controller.dart';
import '../models/similiar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  SimiliarItemWidget(
    this.similiarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SimiliarItemModel similiarItemModelObj;

  var controller = Get.find<SimiliarController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Obx(
            () => CustomImageView(
              imagePath: similiarItemModelObj.image!.value,
              height: 140.v,
              width: 102.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(right: 8.h),
            ),
          ),
        ),
        Expanded(
          child: Obx(
            () => CustomImageView(
              imagePath: similiarItemModelObj.image1!.value,
              height: 140.v,
              width: 102.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.symmetric(horizontal: 8.h),
            ),
          ),
        ),
        Expanded(
          child: Obx(
            () => CustomImageView(
              imagePath: similiarItemModelObj.image2!.value,
              height: 140.v,
              width: 102.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 8.h),
            ),
          ),
        ),
      ],
    );
  }
}
