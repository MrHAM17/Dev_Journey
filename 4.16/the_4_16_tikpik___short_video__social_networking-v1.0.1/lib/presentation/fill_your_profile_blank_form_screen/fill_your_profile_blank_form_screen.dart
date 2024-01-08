import 'controller/fill_your_profile_blank_form_controller.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/utils/validation_functions.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_phone_number.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class FillYourProfileBlankFormScreen extends GetWidget<FillYourProfileBlankFormController> {FillYourProfileBlankFormScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(children: [SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, padding: EdgeInsets.all(2.h), alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEdit))])), SizedBox(height: 24.v), _buildFullName(), SizedBox(height: 24.v), _buildName(), SizedBox(height: 24.v), _buildEmail(), SizedBox(height: 24.v), _buildPhoneNumber(), SizedBox(height: 24.v), _buildAddress(), Spacer(), _buildAutoLayoutHorizontal()]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "msg_fill_your_profile".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFullName() { return CustomTextFormField(controller: controller.fullNameController, hintText: "lbl_full_name".tr, hintStyle: theme.textTheme.bodyMedium!, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v)); } 
/// Section Widget
Widget _buildName() { return CustomTextFormField(controller: controller.nameController, hintText: "lbl_nickname".tr, hintStyle: theme.textTheme.bodyMedium!, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v)); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildAddress() { return CustomTextFormField(controller: controller.addressController, hintText: "lbl_address".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v)); } 
/// Section Widget
Widget _buildSkip() { return Expanded(child: CustomElevatedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapSkip();})); } 
/// Section Widget
Widget _buildContinue() { return Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16)); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSkip(), _buildContinue()]); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }
