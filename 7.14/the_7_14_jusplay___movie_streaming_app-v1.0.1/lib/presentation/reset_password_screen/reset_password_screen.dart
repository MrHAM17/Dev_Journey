import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

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
                                      child: Text("Reset Password?",
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  SizedBox(height: 12.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 328.h,
                                          margin: EdgeInsets.only(right: 14.h),
                                          child: Text(
                                              "Please enter your new password to update the password",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodyMedium!
                                                  .copyWith(height: 1.50)))),
                                  SizedBox(height: 46.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password",
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              right: 20.h,
                                              bottom: 18.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgEye,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 42.v),
                                      obscureText: true),
                                  SizedBox(height: 29.v),
                                  CustomTextFormField(
                                      controller: newpasswordController,
                                      hintText: "Confirm new Password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              right: 20.h,
                                              bottom: 18.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgEye,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 42.v),
                                      obscureText: true),
                                  SizedBox(height: 31.v),
                                  CustomElevatedButton(
                                      text: "Reset Password",
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      onPressed: () {
                                        onTapResetPassword(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the resetPasswordSuccessScreen when the action is triggered.
  onTapResetPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordSuccessScreen);
  }
}
