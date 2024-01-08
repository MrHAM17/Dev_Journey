import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class SubscribeItemWidget extends StatelessWidget {
  SubscribeItemWidget({
    Key? key,
    this.onTapAutoLayoutVertical,
  }) : super(
          key: key,
        );

  VoidCallback? onTapAutoLayoutVertical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAutoLayoutVertical!.call();
      },
      child: Container(
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.gradientOrangeAToOrangeA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 7.v),
            CustomImageView(
              imagePath: ImageConstant.imgUserWhiteA700,
              height: 44.v,
              width: 50.h,
              alignment: Alignment.center,
            ),
            SizedBox(height: 23.v),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "9.99",
                    style: CustomTextStyles.headlineLargeWhiteA700,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 8.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "/month",
                      style: CustomTextStyles.titleMediumGray100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
            Padding(
              padding: EdgeInsets.only(right: 27.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesCheck,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 8.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Listening with better audio quality",
                      style: CustomTextStyles.titleMediumWhiteA700Medium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 22.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesCheck,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 8.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Listening without restrictions & ads",
                      style: CustomTextStyles.titleMediumWhiteA700Medium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 25.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesCheck,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 7.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Shuffle play & download unlimited",
                      style: CustomTextStyles.titleMediumWhiteA700Medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
