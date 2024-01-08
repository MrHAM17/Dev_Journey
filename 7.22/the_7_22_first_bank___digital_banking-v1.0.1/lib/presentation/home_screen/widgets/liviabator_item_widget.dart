import 'package:flutter/material.dart';
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class LiviabatorItemWidget extends StatelessWidget {
  const LiviabatorItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse18,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Livia Bator",
            style: CustomTextStyles.bodySmallBluegray900,
          ),
          SizedBox(height: 4.v),
          Text(
            "CEO",
            style: CustomTextStyles.labelMediumBluegray40001,
          ),
        ],
      ),
    );
  }
}
