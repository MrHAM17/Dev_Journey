import 'controller/confirmation_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';

class ConfirmationScreen extends GetWidget<ConfirmationController> {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_confirmation".tr,
                          style: CustomTextStyles.titleMediumSemiBold18),
                      SizedBox(height: 70.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgIllustrationGray100,
                          height: 200.v,
                          width: 143.h),
                      SizedBox(height: 70.v),
                      CustomElevatedButton(
                          text: "lbl_back_home".tr,
                          onPressed: () {
                            onTapBackHome();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapBackHome() {
    Get.toNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
