import 'notifier/privacy_policy_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_05_blog_app/core/app_export.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends ConsumerStatefulWidget {
  const PrivacyPolicyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacyPolicyScreenState createState() => PrivacyPolicyScreenState();
}

class PrivacyPolicyScreenState extends ConsumerState<PrivacyPolicyScreen> {
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
                      "lbl_privacy_policy2".tr,
                      style: CustomTextStyles.titleMediumBlack90018,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "msg_effective_september".tr,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "msg_you_can_see_our".tr,
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
                        "msg_lorem_ipsum_dolor5".tr,
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
                        "msg_lorem_ipsum_dolor4".tr,
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
                        "msg_lorem_ipsum_dolor4".tr,
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
                        "msg_lorem_ipsum_dolor5".tr,
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
