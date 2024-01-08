import 'controller/verify_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_pin_code_text_field.dart';

class VerifyEmailScreen extends GetWidget<VerifyEmailController> {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 24.h, top: 86.v, right: 24.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup204,
                      height: 154.v,
                      width: 280.h),
                  SizedBox(height: 69.v),
                  Text("msg_verify_your_email".tr,
                      style: CustomTextStyles.titleLargeSemiBold_1),
                  SizedBox(height: 18.v),
                  SizedBox(
                      width: 226.h,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_please_enter_4_digit2".tr,
                                style: CustomTextStyles.titleSmallGray500_1),
                            TextSpan(
                                text: "lbl_xyz_gmail_com".tr,
                                style: CustomTextStyles.titleSmallPrimary)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.only(left: 48.h, right: 49.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  SizedBox(height: 14.v),
                  Text("lbl_resend_code".tr,
                      style: CustomTextStyles.bodyMediumPrimary),
                  SizedBox(width: 92.h, child: Divider()),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                      text: "lbl_verify_code".tr,
                      onPressed: () {
                        onTapVerifyCode();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapVerifyCode() {
    Get.toNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
