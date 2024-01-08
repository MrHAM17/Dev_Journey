import 'controller/setting_security_controller.dart';
import 'models/setting_security_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/core/utils/validation_functions.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_switch.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

class SettingSecurityPage extends StatelessWidget {
  SettingSecurityPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SettingSecurityController controller =
      Get.put(SettingSecurityController(SettingSecurityModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(
                  children: [
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        children: [
                          _buildTwoFactorAuthentication(),
                          SizedBox(height: 18.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_change_password".tr,
                              style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 11.v),
                          _buildInputField7(),
                          SizedBox(height: 18.v),
                          _buildInputField8(),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                            height: 40.v,
                            text: "lbl_save".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoFactorAuthentication() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_two_factor_authentication".tr,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.v),
        Padding(
          padding: EdgeInsets.only(right: 72.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  value: controller.isSelectedSwitch.value,
                  onChange: (value) {
                    controller.isSelectedSwitch.value = value;
                  },
                ),
              ),
              Expanded(
                child: Container(
                  width: 159.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_enable_or_disable".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: appTheme.blueGray40001,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField7() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_current_password".tr,
          style: TextStyle(
            color: appTheme.blueGray40001,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_charlene_123".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField8() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_new_password".tr,
          style: TextStyle(
            color: appTheme.blueGray40001,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.newpasswordController,
          hintText: "lbl_charlene_123".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        ),
      ],
    );
  }
}
