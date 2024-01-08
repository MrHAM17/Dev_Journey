import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_drop_down.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_phone_number.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {EditProfileScreen({Key? key}) : super(key: key);

TextEditingController inputFieldsController = TextEditingController();

TextEditingController inputFieldsController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

TextEditingController phoneNumberController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(children: [_buildInputFields(context), SizedBox(height: 24.v), _buildInputFields1(context), SizedBox(height: 24.v), _buildDate(context), SizedBox(height: 24.v), _buildEmail(context), SizedBox(height: 24.v), _buildPhoneNumber(context), SizedBox(height: 24.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconBottom, height: 20.adaptSize, width: 20.adaptSize)), hintText: "Male", items: dropdownItemList, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v), borderDecoration: DropDownStyleHelper.fillGrayTL16, fillColor: appTheme.gray100, onChanged: (value) {}), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildUpdate(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v)), title: AppbarTitle(text: "Edit Profile", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildInputFields(BuildContext context) { return CustomTextFormField(controller: inputFieldsController, hintText: "Andrew Ainsley"); } 
/// Section Widget
Widget _buildInputFields1(BuildContext context) { return CustomTextFormField(controller: inputFieldsController1, hintText: "Andrew"); } 
/// Section Widget
Widget _buildDate(BuildContext context) { return CustomTextFormField(controller: dateController, hintText: "27/12/1995", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconsPrimary, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "user@domain.com", textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconsPrimary20x20, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomPhoneNumber(country: selectedCountry, controller: phoneNumberController, onTap: (Country value) {selectedCountry = value;}); } 
/// Section Widget
Widget _buildUpdate(BuildContext context) { return CustomElevatedButton(text: "Update", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), onPressed: () {onTapUpdate(context);}); } 
/// Navigates to the profileDetailsOneScreen when the action is triggered.
onTapUpdate(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileDetailsOneScreen); } 
 }
