import 'models/profile_one_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_outlined_button.dart';
import 'provider/profile_one_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileOneBottomsheet extends StatefulWidget {
  const ProfileOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileOneBottomsheetState createState() => ProfileOneBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileOneProvider(),
      child: ProfileOneBottomsheet(),
    );
  }
}

class ProfileOneBottomsheetState extends State<ProfileOneBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          SizedBox(
            height: 277.v,
            width: 380.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 72.v),
                    child: SizedBox(
                      width: 380.h,
                      child: Divider(),
                    ),
                  ),
                ),
                _buildSarahWilona(context),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    height: 45.v,
                    text: "lbl_follow".tr,
                    margin: EdgeInsets.only(right: 12.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseOnerrorcontainer,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL22,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumOnErrorContainer_1,
                  ),
                ),
                Expanded(
                  child: CustomOutlinedButton(
                    height: 45.v,
                    text: "lbl_message".tr,
                    margin: EdgeInsets.only(left: 12.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserPrimary,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL22,
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSarahWilona(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 17.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse10,
              height: 120.adaptSize,
              width: 120.adaptSize,
              radius: BorderRadius.circular(
                60.h,
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              "lbl_sarah_wilona2".tr,
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 10.v),
            Text(
              "lbl_dancer_singer".tr,
              style: CustomTextStyles.titleSmallGray900,
            ),
            SizedBox(height: 39.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "lbl_823".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_posts".tr,
                      style: CustomTextStyles.titleSmallErrorContainer,
                    ),
                  ],
                ),
                Spacer(
                  flex: 36,
                ),
                _buildAutoLayoutVertical(
                  context,
                  nineHundredTwentyFive: "lbl_3_7m".tr,
                  following: "lbl_followers".tr,
                ),
                Spacer(
                  flex: 29,
                ),
                _buildAutoLayoutVertical(
                  context,
                  nineHundredTwentyFive: "lbl_925".tr,
                  following: "lbl_following".tr,
                ),
                Spacer(
                  flex: 33,
                ),
                Column(
                  children: [
                    Text(
                      "lbl_39m".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_likes".tr,
                      style: CustomTextStyles.titleSmallErrorContainer,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildAutoLayoutVertical(
    BuildContext context, {
    required String nineHundredTwentyFive,
    required String following,
  }) {
    return Column(
      children: [
        Text(
          nineHundredTwentyFive,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          following,
          style: CustomTextStyles.titleSmallErrorContainer.copyWith(
            color: theme.colorScheme.errorContainer,
          ),
        ),
      ],
    );
  }
}
