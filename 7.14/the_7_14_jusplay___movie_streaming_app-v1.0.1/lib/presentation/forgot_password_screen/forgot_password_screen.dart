import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Forgot Password?",
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 9.v),
                                  Container(
                                      width: 324.h,
                                      margin: EdgeInsets.only(right: 18.h),
                                      child: Text(
                                          "You forgot your password? don't worry, please enter your recovery email address",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 45.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Email Address",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.emailAddress),
                                  SizedBox(height: 31.v),
                                  CustomElevatedButton(
                                      text: "Submit",
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      onPressed: () {
                                        onTapSubmit(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationScreen);
  }
}
