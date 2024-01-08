import 'package:flutter/material.dart';
import 'package:the_7_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class EightythreeItemWidget extends StatelessWidget {
  const EightythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgTrashBlue500,
        height: 50.adaptSize,
        width: 50.adaptSize,
      ),
    );
  }
}
