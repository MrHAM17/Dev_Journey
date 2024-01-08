import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_outlined_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                                horizontal: 21.h, vertical: 40.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 80.v,
                                  width: 78.h),
                              SizedBox(height: 69.v),
                              _buildInputField(context),
                              SizedBox(height: 23.v),
                              _buildInputField1(context),
                              SizedBox(height: 23.v),
                              _buildInputField2(context),
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "SIGN up".toUpperCase(),
                                  margin: EdgeInsets.only(left: 6.h),
                                  onPressed: () {
                                    onTapSIGNUp(context);
                                  }),
                              SizedBox(height: 40.v),
                              CustomOutlinedButton(
                                  text: "Sign in with google".toUpperCase(),
                                  margin: EdgeInsets.only(left: 6.h),
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGoogle,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize))),
                              SizedBox(height: 77.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Text("Have Account?",
                                            style: CustomTextStyles
                                                .titleLargeGray500Regular)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignIn(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 2.v),
                                            child: Text("Sign in",
                                                style: CustomTextStyles
                                                    .titleLargePrimary)))
                                  ]),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Phone or Email", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: phoneController,
              hintText: "Email",
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 20.v, 12.h, 20.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 64.v),
              contentPadding:
                  EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v))
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Set Password", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: passwordController,
              hintText: "Set Password",
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 20.v, 12.h, 20.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 64.v),
              obscureText: true,
              contentPadding:
                  EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v))
        ]));
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Confirm Password", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: confirmpasswordController,
              hintText: "Confirm Password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 20.v, 12.h, 20.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 64.v),
              obscureText: true,
              contentPadding:
                  EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v))
        ]));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapSIGNUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
