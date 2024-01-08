import 'controller/receive_money_request_controller.dart';
import 'models/receive_money_request_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestPage extends StatelessWidget {
  ReceiveMoneyRequestPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ReceiveMoneyRequestController controller =
      Get.put(ReceiveMoneyRequestController(ReceiveMoneyRequestModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, right: 21.h),
                      child: Column(children: [
                        _buildFrame(),
                        SizedBox(height: 20.v),
                        _buildInputField2(),
                        SizedBox(height: 21.v),
                        _buildInputField3(),
                        SizedBox(height: 21.v),
                        _buildInputField4(),
                        SizedBox(height: 20.v),
                        _buildFrame1(),
                        SizedBox(height: 21.v),
                        _buildInputField7(),
                        SizedBox(height: 20.v),
                        _buildAttatchFile(),
                        SizedBox(height: 40.v),
                        CustomElevatedButton(
                            text: "lbl_send".tr.toUpperCase(),
                            onPressed: () {
                              onTapSend();
                            })
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildInputField() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_first_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h,
              controller: controller.firstNameController,
              hintText: "lbl_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildInputField1() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_last_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h,
              controller: controller.lastNameController,
              hintText: "lbl_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildInputField(), _buildInputField1()]));
  }

  /// Section Widget
  Widget _buildInputField2() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.emailController,
              hintText: "lbl_your_email_here".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildInputField3() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_company_name".tr,
              style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: controller.nameController,
              hintText: "msg_company_name_here".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildInputField4() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_country".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: controller.countryController,
              hintText: "lbl_select_country".tr)
        ]));
  }

  /// Section Widget
  Widget _buildInputField5() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_amount".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h,
              controller: controller.amountController,
              hintText: "lbl_0_00".tr)
        ]));
  }

  /// Section Widget
  Widget _buildInputField6() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_currency".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              width: 173.h,
              controller: controller.inputsController,
              hintText: "lbl_usd".tr)
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildInputField5(), _buildInputField6()]));
  }

  /// Section Widget
  Widget _buildInputField7() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_massage".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: controller.inputsController1,
              hintText: "msg_write_a_short_note".tr,
              textInputAction: TextInputAction.done)
        ]));
  }

  /// Section Widget
  Widget _buildAttatchFile() {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 97.h, vertical: 38.v),
        decoration: AppDecoration.outlineGray,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 2.v),
          Text("msg_attach_file_optional".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 6.v),
          CustomImageView(
              imagePath: ImageConstant.imgFile,
              height: 32.adaptSize,
              width: 32.adaptSize)
        ]));
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  onTapSend() {
    Get.toNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
