import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_elevated_button.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage287x375,
                                      height: 287.v,
                                      width: 375.h,
                                      alignment: Alignment.topCenter),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 28.h, vertical: 33.v),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL32),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 6.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        "Welcome Back! ",
                                                        style: theme.textTheme
                                                            .titleLarge)),
                                                SizedBox(height: 14.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        "Login to continue ",
                                                        style: CustomTextStyles
                                                            .titleSmallBluegray400)),
                                                SizedBox(height: 28.v),
                                                _buildSocials(context),
                                                SizedBox(height: 21.v),
                                                Text(
                                                    "Or connect with your email",
                                                    style: theme
                                                        .textTheme.bodySmall),
                                                SizedBox(height: 31.v),
                                                _buildName(context),
                                                SizedBox(height: 20.v),
                                                _buildEmail(context),
                                                SizedBox(height: 20.v),
                                                _buildPassword(context),
                                                SizedBox(height: 18.v),
                                                CustomElevatedButton(
                                                    height: 58.v,
                                                    text: "Create an Account",
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillPrimary,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .titleSmallWhiteA700Bold,
                                                    onPressed: () {
                                                      onTapCreateAnAccount(
                                                          context);
                                                    }),
                                                SizedBox(height: 25.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                          "Already have an account?",
                                                          style: theme.textTheme
                                                              .bodyMedium),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtAlreadyHaveAn(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h),
                                                              child: Text(
                                                                  "Login",
                                                                  style: CustomTextStyles
                                                                      .bodyMediumPrimary)))
                                                    ])
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildSocials(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
          decoration: AppDecoration.fillLightBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft)),
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
          decoration: AppDecoration.fillOnPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgUserWhiteA700,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft)),
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft))
    ]);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name".toUpperCase(), style: theme.textTheme.labelLarge),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: nameController,
          hintText: "Enter Name",
          contentPadding: EdgeInsets.all(15.h))
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email".toUpperCase(), style: theme.textTheme.labelLarge),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "user@mail.com",
          textInputType: TextInputType.emailAddress,
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 18.adaptSize,
                  width: 18.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 48.v))
    ]);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password".toUpperCase(), style: theme.textTheme.labelLarge),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Password@123",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgUeye,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          obscureText: true)
    ]);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapCreateAnAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyHaveAn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
