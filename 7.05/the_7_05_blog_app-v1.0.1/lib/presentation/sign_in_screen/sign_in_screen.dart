import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/custom_outlined_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 39.v),
                  Text("Welcome back.", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 20.v),
                  _buildSignInWithGoogle(context),
                  SizedBox(height: 14.v),
                  _buildSignInWithFacebook(context),
                  SizedBox(height: 14.v),
                  _buildSignInWithTwitter(context),
                  SizedBox(height: 14.v),
                  _buildSignInWithApple(context),
                  SizedBox(height: 39.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("Don’t have an account? ",
                            style: theme.textTheme.bodyMedium)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtSignUp(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("Sign up.",
                                style: CustomTextStyles.bodyMediumPrimary)))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithTwitter(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Twitter",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgTwitter1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithApple(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleblacklogo1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
