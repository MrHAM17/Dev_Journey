import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical2ItemWidget extends StatelessWidget {
  const Autolayoutvertical2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "Ariana Grande",
            style: CustomTextStyles.titleMediumGray600Medium,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRewindGray500,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
