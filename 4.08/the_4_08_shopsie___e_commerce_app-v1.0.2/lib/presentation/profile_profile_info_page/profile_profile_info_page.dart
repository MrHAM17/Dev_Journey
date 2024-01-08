import 'controller/profile_profile_info_controller.dart';
import 'models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

class ProfileProfileInfoPage extends StatelessWidget {
  ProfileProfileInfoPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ProfileProfileInfoController controller =
      Get.put(ProfileProfileInfoController(ProfileProfileInfoModel().obs));

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
                decoration: AppDecoration.white,
                child: Column(
                  children: [
                    SizedBox(height: 38.v),
                    _buildThirtyOne(),
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
  Widget _buildFirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_first_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: controller.firstNameController,
          hintText: "lbl_archie".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_last_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: controller.lastNameController,
          hintText: "lbl_copeland".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email_address".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_archiecopeland_gmail_com".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirtyOne() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildFirstName(),
          SizedBox(height: 27.v),
          _buildLastName(),
          SizedBox(height: 26.v),
          _buildEmailAddress(),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            text: "lbl_save_edit".tr,
          ),
        ],
      ),
    );
  }
}
