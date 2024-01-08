import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayouthorizontal7ItemWidget extends StatelessWidget {
  const Autolayouthorizontal7ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse80x80,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                40.h,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "Aubrey",
              style: CustomTextStyles.titleSmallGray900SemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
