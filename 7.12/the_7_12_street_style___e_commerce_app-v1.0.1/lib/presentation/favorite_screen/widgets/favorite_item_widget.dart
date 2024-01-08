import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  const FavoriteItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle12,
          height: 180.v,
          width: 175.h,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 14.v),
        Text(
          "Box Tee",
          style: CustomTextStyles.titleMediumGray60001,
        ),
      ],
    );
  }
}
