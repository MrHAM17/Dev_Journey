import 'controller/sign_up_complete_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/core/utils/validation_functions.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpCompleteAccountScreen
    extends GetWidget<SignUpCompleteAccountController> {
  SignUpCompleteAccountScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 34.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 15.h),
                                      child: Text(
                                          "msg_complete_your_account".tr,
                                          style:
                                              theme.textTheme.headlineSmall))),
                              SizedBox(height: 9.v),
                              Text("msg_lorem_ipsum_dolor".tr,
                                  style:
                                      CustomTextStyles.titleSmallBluegray400),
                              SizedBox(height: 33.v),
                              _buildINPUTFIELD(),
                              SizedBox(height: 18.v),
                              _buildINPUTFIELD1(),
                              SizedBox(height: 18.v),
                              _buildINPUTFIELD2(),
                              SizedBox(height: 16.v),
                              _buildDropdown(),
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "msg_continue_with_email".tr),
                              SizedBox(height: 28.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 40.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_already_have_an".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray500),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLargeLabelMedium();
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3.h),
                                                child: Text("lbl_login".tr,
                                                    style: theme.textTheme
                                                        .titleMedium)))
                                      ])),
                              SizedBox(height: 19.v),
                              Container(
                                  width: 245.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 40.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_by_signing_up_you2".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray500SemiBold),
                                        TextSpan(
                                            text: "lbl_terms".tr,
                                            style: CustomTextStyles
                                                .titleSmallBlack900),
                                        TextSpan(
                                            text: "lbl_and".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray500SemiBold),
                                        TextSpan(
                                            text: "msg_conditions_of_use".tr,
                                            style: CustomTextStyles
                                                .titleSmallBlack900)
                                      ]),
                                      textAlign: TextAlign.center)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapImage();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD() {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_enter_your_first".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildINPUTFIELD1() {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_last_name".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: controller.lastNameController,
              hintText: "msg_enter_your_last".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildINPUTFIELD2() {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_password".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 9.v),
          Obx(() => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "msg_create_a_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgHide,
                          height: 24.adaptSize,
                          width: 24.adaptSize))),
              suffixConstraints: BoxConstraints(maxHeight: 52.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v)))
        ]));
  }

  /// Section Widget
  Widget _buildDropdown() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Text("msg_select_a_country".tr,
                  style: CustomTextStyles.titleMediumMedium_1)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImage() {
    Get.back();
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLargeLabelMedium() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
