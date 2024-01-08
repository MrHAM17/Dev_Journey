import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical1ItemWidget extends StatelessWidget {
  const Autolayoutvertical1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 3.v,
          ),
          child: Text(
            "Theresa Webb",
            style: CustomTextStyles.titleMediumGray600Medium,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesXClose,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ],
    );
  }
}
