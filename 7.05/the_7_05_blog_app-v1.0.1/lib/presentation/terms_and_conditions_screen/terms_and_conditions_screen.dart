import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key})
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
            padding: EdgeInsets.only(top: 1.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terms and Conditions",
                    style: CustomTextStyles.titleMediumBlack90018,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "Effective: September 1, 2020",
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "You can see our previous Terms here",
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  SizedBox(height: 23.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.h,
                      margin: EdgeInsets.only(right: 23.h),
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
                    child: SizedBox(
                      width: 335.h,
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
                    child: SizedBox(
                      width: 335.h,
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
                      margin: EdgeInsets.only(right: 23.h),
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
                  SizedBox(height: 23.v),
                  Text(
                    "Your Account and Responsibilities",
                    style: CustomTextStyles.titleMediumBlack900Medium,
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.h,
                      margin: EdgeInsets.only(right: 23.h),
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
