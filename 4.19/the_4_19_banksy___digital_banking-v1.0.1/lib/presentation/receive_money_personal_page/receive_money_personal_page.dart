import 'controller/receive_money_personal_controller.dart';
import 'models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReceiveMoneyPersonalPage extends StatelessWidget {
  ReceiveMoneyPersonalPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ReceiveMoneyPersonalController controller =
      Get.put(ReceiveMoneyPersonalController(ReceiveMoneyPersonalModel().obs));

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
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(children: [
                        _buildFrame(),
                        SizedBox(height: 20.v),
                        _buildInputField1(),
                        SizedBox(height: 21.v),
                        _buildInputField2(),
                        SizedBox(height: 20.v),
                        _buildFrame1(),
                        SizedBox(height: 21.v),
                        _buildInputField3(),
                        SizedBox(height: 40.v),
                        _buildSend()
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
  Widget _buildLastName() {
    return CustomTextFormField(
        width: 173.h,
        controller: controller.lastNameController,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildInputField(),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_last_name".tr,
                style: CustomTextStyles.bodyLargeGray70001),
            SizedBox(height: 11.v),
            _buildLastName()
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_your_email_here".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildInputField1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      _buildEmail()
    ]);
  }

  /// Section Widget
  Widget _buildCountry() {
    return CustomTextFormField(
        controller: controller.countryController,
        hintText: "lbl_select_country".tr);
  }

  /// Section Widget
  Widget _buildInputField2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 9.v),
      _buildCountry()
    ]);
  }

  /// Section Widget
  Widget _buildAmount() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: CustomTextFormField(
                controller: controller.amountController,
                hintText: "lbl_0_00".tr)));
  }

  /// Section Widget
  Widget _buildInputs() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomTextFormField(
                controller: controller.inputsController,
                hintText: "lbl_usd".tr)));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 107.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text("lbl_amount".tr,
                    style: CustomTextStyles.bodyLargeGray70001)),
            Text("lbl_currency".tr, style: CustomTextStyles.bodyLargeGray70001)
          ])),
      SizedBox(height: 10.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildAmount(), _buildInputs()])
    ]);
  }

  /// Section Widget
  Widget _buildInputs1() {
    return CustomTextFormField(
        controller: controller.inputsController1,
        hintText: "msg_write_a_short_note".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildInputField3() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_massage".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 9.v),
      _buildInputs1()
    ]);
  }

  /// Section Widget
  Widget _buildSend() {
    return CustomElevatedButton(
        text: "lbl_send".tr.toUpperCase(),
        onPressed: () {
          onTapSend();
        });
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  onTapSend() {
    Get.toNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
