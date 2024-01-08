import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ShopItemWidget extends StatelessWidget {
  const ShopItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle9,
          height: 237.v,
          width: 175.h,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 15.v),
        Text(
          "Surge Short",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 5.v),
        Text(
          "68 USD",
          style: CustomTextStyles.titleMediumGray50001_1,
        ),
      ],
    );
  }
}
