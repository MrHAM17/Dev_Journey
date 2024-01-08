import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 249.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          child: Text(
                                              "Welcome back! Glad to see you, Again!",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.50)))),
                                  SizedBox(height: 34.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Enter your email",
                                      textInputType:
                                          TextInputType.emailAddress),
                                  SizedBox(height: 15.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Enter your password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 12.v, 23.h, 12.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgEye,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 48.v),
                                      obscureText: true,
                                      contentPadding: EdgeInsets.only(
                                          left: 24.h, top: 15.v, bottom: 15.v)),
                                  SizedBox(height: 24.v),
                                  CustomElevatedButton(
                                      text: "Login",
                                      onPressed: () {
                                        onTapLogin(context);
                                      }),
                                  SizedBox(height: 38.v),
                                  _buildOrLoginWithDivider(context),
                                  SizedBox(height: 21.v),
                                  _buildEleven(context),
                                  SizedBox(height: 43.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveanaccount(context);
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Don’t have an",
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            TextSpan(
                                                text: " account?",
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "Register Now",
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildOrLoginWithDivider(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 112.h, child: Divider())),
          Text("Or Login with", style: CustomTextStyles.bodyMediumGray600_1),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 111.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 56.v,
          width: 168.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgSocialFacebookIc,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center)),
      Container(
          height: 56.v,
          width: 168.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgSocialGoogleIc,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center))
    ]);
  }

  /// Navigates to the mainLandingScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainLandingScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
