import 'controller/enter_otp_controller.dart';
import 'models/enter_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class EnterOtpPage extends StatelessWidget {
  EnterOtpPage({Key? key}) : super(key: key);

  EnterOtpController controller =
      Get.put(EnterOtpController(EnterOtpModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: Column(
                    children: [SizedBox(height: 40.v), _buildContinue()]))));
  }

  /// Section Widget
  Widget _buildContinue() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          CustomElevatedButton(
              text: "lbl_continue".tr,
              onPressed: () {
                onTapContinue();
              }),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("msg_didn_t_receive_code".tr,
                    style: CustomTextStyles.titleMediumGray500),
                Text("lbl_resend_code".tr, style: theme.textTheme.titleMedium)
              ]))
        ]));
  }

  /// Navigates to the jobTypeScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.jobTypeScreen,
    );
  }
}
