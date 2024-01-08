import 'package:flutter/material.dart' hide SearchController;
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "Edward Ford",
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail229x154,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage6,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "Edward Ford",
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail1,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage7,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "Edward Ford",
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail2,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage8,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "Edward Ford",
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
