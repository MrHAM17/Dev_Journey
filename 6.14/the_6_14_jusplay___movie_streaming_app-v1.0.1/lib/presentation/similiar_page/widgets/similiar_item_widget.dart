import '../models/similiar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  SimiliarItemWidget(
    this.similiarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SimiliarItemModel similiarItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: similiarItemModelObj?.image,
            height: 140.v,
            width: 102.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(right: 8.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: similiarItemModelObj?.image1,
            height: 140.v,
            width: 102.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.symmetric(horizontal: 8.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: similiarItemModelObj?.image2,
            height: 140.v,
            width: 102.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(left: 8.h),
          ),
        ),
      ],
    );
  }
}
