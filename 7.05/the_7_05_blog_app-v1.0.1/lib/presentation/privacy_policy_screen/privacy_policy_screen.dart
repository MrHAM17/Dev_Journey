import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 20.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "Privacy policy",
                      style: CustomTextStyles.titleMediumBlack90018,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "Effective: September 1, 2020",
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "You can see our previous Terms here",
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 23.h,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 335.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 335.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 23.h,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 99.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }
}
