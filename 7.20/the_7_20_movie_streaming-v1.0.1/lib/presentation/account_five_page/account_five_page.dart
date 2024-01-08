import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AccountFivePage extends StatelessWidget {
  const AccountFivePage({Key? key})
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
            padding: EdgeInsets.only(top: 13.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLikedMoviesIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "Liked Movies",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgNotificationIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "Notification",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMySubscription,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "My Subscription Plan",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTransactionHistory,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Transaction History",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgProfileSettings,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Profile Settings",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgWatchHistoryIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Watch History",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFollowingIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Following",
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 116.v),
                  CustomElevatedButton(
                    height: 50.v,
                    text: "Logout",
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
      height: 54.v,
      title: AppbarTitle(
        text: "Account",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcon1,
          margin: EdgeInsets.fromLTRB(16.h, 19.v, 16.h, 17.v),
        ),
      ],
    );
  }
}
