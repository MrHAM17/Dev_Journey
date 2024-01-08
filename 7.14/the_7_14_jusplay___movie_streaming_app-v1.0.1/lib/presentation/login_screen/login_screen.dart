import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 47.v),
                            child: Column(children: [
                              Text("Login",
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 45.v),
                              _buildEmail(context),
                              SizedBox(height: 29.v),
                              _buildPassword(context),
                              SizedBox(height: 24.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("Forgot Password?",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer))),
                              SizedBox(height: 22.v),
                              _buildLogin(context),
                              SizedBox(height: 32.v),
                              _buildFrame(context),
                              SizedBox(height: 31.v),
                              _buildFrame1(context),
                              SizedBox(height: 49.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 29.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Do you already have an account?",
                                            style: CustomTextStyles
                                                .bodySmallPrimaryContainer),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignUpNow(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text("Sign up now",
                                                    style: theme
                                                        .textTheme.labelLarge)))
                                      ])),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email Address",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, right: 20.h, bottom: 18.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 42.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapLogin(context);
        });
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
                  child: SizedBox(width: 132.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text("or",
                      style: CustomTextStyles.bodySmallPrimaryContainer)),
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
                  child: SizedBox(width: 146.h, child: Divider(indent: 14.h)))
            ]));
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Google",
            margin: EdgeInsets.only(right: 8.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle3,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
            buttonTextStyle: theme.textTheme.bodySmall!));
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Facebook",
            margin: EdgeInsets.only(left: 8.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook12,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
            buttonTextStyle: theme.textTheme.bodySmall!));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogle(context), _buildFacebook(context)]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the homeTabContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUpNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
