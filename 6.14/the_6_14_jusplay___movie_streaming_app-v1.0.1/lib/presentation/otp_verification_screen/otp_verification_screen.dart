import 'notifier/otp_verification_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_pin_code_text_field.dart';

class OtpVerificationScreen extends ConsumerStatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  OtpVerificationScreenState createState() => OtpVerificationScreenState();
}

class OtpVerificationScreenState extends ConsumerState<OtpVerificationScreen> {
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
                      Text("msg_otp_verification".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 11.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_6_digit_code_has2".tr,
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "lbl_xyz_gmail_com".tr,
                                style: CustomTextStyles
                                    .titleSmallPrimaryContainerBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 19.h),
                          child: Consumer(builder: (context, ref, _) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: ref
                                    .watch(otpVerificationNotifier)
                                    .otpController,
                                onChanged: (value) {
                                  ref
                                      .watch(otpVerificationNotifier)
                                      .otpController
                                      ?.text = value;
                                });
                          })),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "lbl_verify".tr,
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
                                Text("msg_didn_t_receive_the".tr,
                                    style: CustomTextStyles
                                        .bodySmallPrimaryContainer),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("lbl_resend".tr,
                                        style: theme.textTheme.labelLarge))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
