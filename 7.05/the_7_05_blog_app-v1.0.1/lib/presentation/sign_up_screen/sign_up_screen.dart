import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/custom_outlined_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgDhiwiseBlackMonogram,
                      height: 59.adaptSize,
                      width: 59.adaptSize),
                  SizedBox(height: 43.v),
                  Text("Register Now", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 16.v),
                  _buildSignUpWithGoogle(context),
                  SizedBox(height: 14.v),
                  _buildSignUpWithFacebook(context),
                  SizedBox(height: 14.v),
                  _buildSignUpWithTwitter(context),
                  SizedBox(height: 14.v),
                  _buildSignUpWithApple(context),
                  SizedBox(height: 41.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? ",
                                style: theme.textTheme.bodyMedium),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSignIn(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("Sign in",
                                        style: CustomTextStyles
                                            .bodyMediumPrimary)))
                          ])),
                  Spacer(),
                  SizedBox(height: 10.v),
                  Container(
                      width: 318.h,
                      margin: EdgeInsets.only(left: 4.h, right: 5.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By signing up, you agree to our ",
                                style: theme.textTheme.bodySmall),
                            TextSpan(
                                text: "Terms of Service",
                                style: CustomTextStyles.bodySmallPrimary),
                            TextSpan(
                                text: " and\nacknowledge that our ",
                                style: theme.textTheme.bodySmall!
                                    .copyWith(height: 1.50)),
                            TextSpan(
                                text: "Privacy Policy ",
                                style: CustomTextStyles.bodySmallPrimary),
                            TextSpan(
                                text: "applies to you.",
                                style: theme.textTheme.bodySmall)
                          ]),
                          textAlign: TextAlign.center))
                ]))));
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign up with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign up with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignUpWithTwitter(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign up with Twitter",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgTwitter1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignUpWithApple(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign up with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleblacklogo1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
