import 'package:flutter/material.dart';
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_outlined_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 123.v, right: 16.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Lets Get Started",
                          style: theme.textTheme.headlineMedium)),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 220.h,
                          child: Text(
                              "Find the right and what you want \nonly in Firstbank",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleSmallBluegray40001
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 21.v),
                  _buildLogin(context),
                  SizedBox(height: 16.v),
                  _buildRegister(context),
                  SizedBox(height: 26.v),
                  Text("Or Use Instant Sign Up",
                      style: CustomTextStyles.labelLargeBluegray400),
                  SizedBox(height: 24.v),
                  _buildSignWithGoogle(context),
                  SizedBox(height: 24.v),
                  _buildSignWithApple(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapLogin(context);
        });
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        text: "Register",
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapRegister(context);
        });
  }

  /// Section Widget
  Widget _buildSignWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "Sign With Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001);
  }

  /// Section Widget
  Widget _buildSignWithApple(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "Sign With Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registersScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registersScreen);
  }
}
