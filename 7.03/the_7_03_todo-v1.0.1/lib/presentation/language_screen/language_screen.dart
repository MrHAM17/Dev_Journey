import 'package:flutter/material.dart';
import 'package:the_7_03_todo/core/app_export.dart';
import 'package:the_7_03_todo/widgets/custom_elevated_button.dart';
import 'package:the_7_03_todo/widgets/custom_icon_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 43.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)),
                  SizedBox(height: 82.v),
                  _buildPageHeader(context),
                  SizedBox(height: 87.v),
                  CustomElevatedButton(
                      text: "Indonesian",
                      buttonStyle: CustomButtonStyles.fillDeepOrange,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeSecondaryContainer,
                      onPressed: () {
                        onTapIndonesian(context);
                      }),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      text: "English",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeDeeppurpleA400),
                  Spacer(),
                  SizedBox(height: 53.v),
                  CustomElevatedButton(
                      text: "Save",
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      onPressed: () {
                        onTapSave(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Language", style: theme.textTheme.headlineMedium),
          SizedBox(height: 7.v),
          Text("Your settings so that we are comfortable",
              style: theme.textTheme.labelLarge)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapIndonesian(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
