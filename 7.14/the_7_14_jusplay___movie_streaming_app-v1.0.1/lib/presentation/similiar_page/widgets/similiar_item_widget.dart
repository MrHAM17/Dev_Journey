import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  const SimiliarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle12078,
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
            imagePath: ImageConstant.imgRectangle12078140x102,
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
            imagePath: ImageConstant.imgRectangle120781,
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
