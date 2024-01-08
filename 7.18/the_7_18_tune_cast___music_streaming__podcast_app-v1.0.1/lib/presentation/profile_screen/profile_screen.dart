import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_phone_number.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {ProfileScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController emailController = TextEditingController();

Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

TextEditingController phoneNumberController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), child: Column(children: [SizedBox(height: 3.v), SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEditOnprimarycontainer))])), SizedBox(height: 24.v), _buildFullName(context), SizedBox(height: 20.v), _buildName(context), SizedBox(height: 20.v), _buildDateOfBirth(context), SizedBox(height: 20.v), _buildEmail(context), SizedBox(height: 20.v), _buildPhoneNumber(context), Spacer(), _buildFrame(context)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Fill Your Profile", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return CustomTextFormField(controller: fullNameController, hintText: "Full Name"); } 
/// Section Widget
Widget _buildName(BuildContext context) { return CustomTextFormField(controller: nameController, hintText: "Nick Name"); } 
/// Section Widget
Widget _buildDateOfBirth(BuildContext context) { return CustomTextFormField(controller: dateOfBirthController, hintText: "Date of Birth", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIconsGray50020x20, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), contentPadding: EdgeInsets.only(left: 20.h, top: 21.v, bottom: 21.v)); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "Email", textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIcons20x20, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), contentPadding: EdgeInsets.only(left: 20.h, top: 21.v, bottom: 21.v)); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomPhoneNumber(country: selectedCountry, controller: phoneNumberController, onTap: (Country value) {selectedCountry = value;}); } 
/// Section Widget
Widget _buildSkip(BuildContext context) { return Expanded(child: CustomOutlinedButton(text: "Skip", margin: EdgeInsets.only(right: 10.h), onPressed: () {onTapSkip(context);})); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 10.h), onPressed: () {onTapContinue(context);})); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSkip(context), _buildContinue(context)]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
/// Navigates to the createNewPinScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createNewPinScreen); } 
 }
