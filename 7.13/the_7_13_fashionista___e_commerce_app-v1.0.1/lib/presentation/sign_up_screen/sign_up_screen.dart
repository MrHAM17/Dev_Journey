import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 126.h,
                                  child: Text("Create\nAccount!",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineMedium!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 29.v),
                          _buildName(context),
                          SizedBox(height: 20.v),
                          _buildEmail(context),
                          SizedBox(height: 20.v),
                          _buildPassword(context),
                          SizedBox(height: 94.v),
                          _buildRegister(context),
                          SizedBox(height: 16.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already have an account? ",
                                        style:
                                            CustomTextStyles.bodyMediumGray500),
                                    TextSpan(
                                        text: "Login",
                                        style: CustomTextStyles.titleSmallBold)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 31.v),
                          _buildFrameSeventeen(context),
                          SizedBox(height: 20.v),
                          _buildFrame(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Let’s Sign up"));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(controller: nameController, hintText: "Name");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
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
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 52.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(text: "Register");
  }

  /// Section Widget
  Widget _buildOrContinueWith(BuildContext context) {
    return CustomElevatedButton(
        height: 41.v,
        width: 133.h,
        text: "or continue with",
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.bodyMedium!);
  }

  /// Section Widget
  Widget _buildFrameSeventeen(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider())),
      _buildOrContinueWith(context),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider()))
    ]);
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Google",
            margin: EdgeInsets.only(right: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildApple(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Apple",
            margin: EdgeInsets.only(left: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgUimapple,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogle(context), _buildApple(context)]);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
