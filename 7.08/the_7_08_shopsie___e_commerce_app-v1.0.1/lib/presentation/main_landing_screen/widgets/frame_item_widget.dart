import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 236.v,
            width: 171.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "Olive plain dress",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 15.v),
          Text(
            " 13.99",
            style: CustomTextStyles.titleSmallPrimarySemiBold,
          ),
        ],
      ),
    );
  }
}
