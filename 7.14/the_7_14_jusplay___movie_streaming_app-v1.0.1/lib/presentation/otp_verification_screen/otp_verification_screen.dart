import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_pin_code_text_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("OTP Verification",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 11.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "6 digit code has been sent to ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "xyz@gmail.com ",
                                style: CustomTextStyles
                                    .titleSmallPrimaryContainerBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 19.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "Verify",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          onPressed: () {
                            onTapVerify(context);
                          }),
                      SizedBox(height: 47.v),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Didn’t receive the OTP ?",
                                    style: CustomTextStyles
                                        .bodySmallPrimaryContainer),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("Resend",
                                        style: theme.textTheme.labelLarge))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }
}
