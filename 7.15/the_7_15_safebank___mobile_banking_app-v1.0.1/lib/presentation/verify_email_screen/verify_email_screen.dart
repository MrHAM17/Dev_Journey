import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_pin_code_text_field.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 24.h, top: 86.v, right: 24.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup204,
                      height: 154.v,
                      width: 280.h),
                  SizedBox(height: 69.v),
                  Text("Verify Your Email",
                      style: CustomTextStyles.titleLargeSemiBold_1),
                  SizedBox(height: 18.v),
                  SizedBox(
                      width: 226.h,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Please enter 4 digit code sent to\n",
                                style: CustomTextStyles.titleSmallGray500_1),
                            TextSpan(
                                text: "xyz@gmail.com",
                                style: CustomTextStyles.titleSmallPrimary)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.only(left: 48.h, right: 49.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 14.v),
                  Text("Resend Code",
                      style: CustomTextStyles.bodyMediumPrimary),
                  SizedBox(width: 92.h, child: Divider()),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                      text: "Verify Code",
                      onPressed: () {
                        onTapVerifyCode(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapVerifyCode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.minePageContainerScreen);
  }
}
