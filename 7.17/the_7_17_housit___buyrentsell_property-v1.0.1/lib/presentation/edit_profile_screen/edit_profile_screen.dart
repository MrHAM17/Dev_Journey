import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {EditProfileScreen({Key? key}) : super(key: key);

TextEditingController lockController = TextEditingController();

TextEditingController settingsController = TextEditingController();

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgShape34, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h)), SizedBox(height: 30.v), _buildLock(context), SizedBox(height: 15.v), _buildSettings(context), SizedBox(height: 15.v), _buildEmail(context), SizedBox(height: 15.v), _buildUnlink1(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildChooseLocation(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Edit Profile")); } 
/// Section Widget
Widget _buildLock(BuildContext context) { return CustomTextFormField(controller: lockController, hintText: "Jonathan Anderson", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildSettings(BuildContext context) { return CustomTextFormField(controller: settingsController, hintText: "+12 345-7890-1234", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "user@email.com", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildUnlink(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "Unlink", margin: EdgeInsets.only(right: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1)); } 
/// Section Widget
Widget _buildLink(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "Link", margin: EdgeInsets.only(left: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL25, buttonTextStyle: CustomTextStyles.labelLargeSemiBold)); } 
/// Section Widget
Widget _buildUnlink1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildUnlink(context), _buildLink(context)]); } 
/// Section Widget
Widget _buildChooseLocation(BuildContext context) { return CustomElevatedButton(text: "Choose location", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
