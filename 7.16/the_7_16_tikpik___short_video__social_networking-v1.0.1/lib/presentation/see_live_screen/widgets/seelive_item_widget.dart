import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SeeliveItemWidget extends StatelessWidget {
  const SeeliveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daryl Nehls",
                  style: CustomTextStyles.titleSmallOnErrorContainerBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  "woohoooo",
                  style: CustomTextStyles.labelLargeGray300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
