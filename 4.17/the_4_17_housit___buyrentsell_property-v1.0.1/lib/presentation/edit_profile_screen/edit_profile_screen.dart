import 'controller/edit_profile_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/core/utils/validation_functions.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {EditProfileScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgShape34, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h)), SizedBox(height: 30.v), _buildLock(), SizedBox(height: 15.v), _buildSettings(), SizedBox(height: 15.v), _buildEmail(), SizedBox(height: 15.v), _buildUnlink1(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildChooseLocation())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_edit_profile".tr)); } 
/// Section Widget
Widget _buildLock() { return CustomTextFormField(controller: controller.lockController, hintText: "msg_jonathan_anderson".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildSettings() { return CustomTextFormField(controller: controller.settingsController, hintText: "msg_12_345_7890_1234".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_user_email_com".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}); } 
/// Section Widget
Widget _buildUnlink() { return Expanded(child: CustomElevatedButton(text: "lbl_unlink".tr, margin: EdgeInsets.only(right: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1)); } 
/// Section Widget
Widget _buildLink() { return Expanded(child: CustomElevatedButton(text: "lbl_link".tr, margin: EdgeInsets.only(left: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL25, buttonTextStyle: CustomTextStyles.labelLargeSemiBold)); } 
/// Section Widget
Widget _buildUnlink1() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildUnlink(), _buildLink()]); } 
/// Section Widget
Widget _buildChooseLocation() { return CustomElevatedButton(text: "lbl_choose_location".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
