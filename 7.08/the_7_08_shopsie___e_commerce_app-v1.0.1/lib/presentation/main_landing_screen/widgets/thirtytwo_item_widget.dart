import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  const ThirtytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle7,
          height: 386.v,
          width: 358.h,
        ),
        SizedBox(height: 26.v),
        Text(
          "Outerwear",
          style: CustomTextStyles.titleMediumBold,
        ),
        SizedBox(height: 6.v),
        Text(
          "Raincoats, sweaters, etc.",
          style: CustomTextStyles.bodySmallBluegray400,
        ),
      ],
    );
  }
}
