import 'controller/bank_to_bank_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class BankToBankTwoScreen extends GetWidget<BankToBankTwoController> {
  const BankToBankTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 24.h, top: 63.v, right: 24.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 62.h),
                          child: Text("msg_enter_the_ammount".tr,
                              style: CustomTextStyles.headlineSmallExtraBold)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 72.h),
                          child: Text("msg_enter_ammount_you".tr,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 41.v),
                      CustomTextFormField(
                          controller: controller.priceController,
                          hintText: "lbl_500".tr,
                          hintStyle: CustomTextStyles.titleMedium18,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr.toUpperCase(),
                          onPressed: () {
                            onTapContinue();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_bank_to_bank2".tr));
  }

  /// Navigates to the bankToBankThreeScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.bankToBankThreeScreen,
    );
  }
}
