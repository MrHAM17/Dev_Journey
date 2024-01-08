import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';class LetsYouInScreen extends StatelessWidget {const LetsYouInScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(children: [SizedBox(height: 4.v), CustomImageView(imagePath: ImageConstant.imgGroup318, height: 200.v, width: 236.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 61.h)), SizedBox(height: 36.v), Text("Let’s you in", style: theme.textTheme.displayMedium), SizedBox(height: 24.v), _buildContinueWithFacebook(context), SizedBox(height: 16.v), _buildContinueWithGoogle(context), SizedBox(height: 16.v), _buildContinueWithApple(context), SizedBox(height: 36.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 34.v), _buildSignInWithPassword(context), SizedBox(height: 31.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Don’t have an account?", style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Sign up", style: CustomTextStyles.titleSmallOnPrimaryContainer)))])])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapImage(context);})); } 
/// Section Widget
Widget _buildContinueWithFacebook(BuildContext context) { return CustomOutlinedButton(height: 60.v, text: "Continue with Facebook", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgIconsGray50, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGray, buttonTextStyle: CustomTextStyles.titleMediumSemiBold); } 
/// Section Widget
Widget _buildContinueWithGoogle(BuildContext context) { return CustomOutlinedButton(height: 60.v, text: "Continue with Google", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGray, buttonTextStyle: CustomTextStyles.titleMediumSemiBold); } 
/// Section Widget
Widget _buildContinueWithApple(BuildContext context) { return CustomOutlinedButton(height: 60.v, text: "Continue with Apple", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgIcons, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGray, buttonTextStyle: CustomTextStyles.titleMediumSemiBold); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 11.v), child: SizedBox(width: 155.h, child: Divider())), Text("or", style: CustomTextStyles.titleMediumGray70001), Padding(padding: EdgeInsets.only(top: 9.v, bottom: 11.v), child: SizedBox(width: 155.h, child: Divider()))])); } 
/// Section Widget
Widget _buildSignInWithPassword(BuildContext context) { return CustomElevatedButton(text: "Sign in with password", onPressed: () {onTapSignInWithPassword(context);}); } 

/// Navigates back to the previous screen.
onTapImage(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the signInScreen when the action is triggered.
onTapSignInWithPassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signInScreen); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpScreen); } 
 }
