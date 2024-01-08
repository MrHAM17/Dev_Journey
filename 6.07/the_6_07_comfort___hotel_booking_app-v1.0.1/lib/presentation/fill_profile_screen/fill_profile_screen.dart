import 'models/fill_profile_model.dart';import 'notifier/fill_profile_notifier.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/utils/validation_functions.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_drop_down.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_icon_button.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_phone_number.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_text_form_field.dart';class FillProfileScreen extends ConsumerStatefulWidget {const FillProfileScreen({Key? key}) : super(key: key);

@override FillProfileScreenState createState() =>  FillProfileScreenState();

 }

// ignore_for_file: must_be_immutable
class FillProfileScreenState extends ConsumerState<FillProfileScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 40.v), child: Column(children: [_buildAvtar(context), SizedBox(height: 24.v), _buildFullName(context), SizedBox(height: 24.v), _buildName(context), SizedBox(height: 24.v), _buildDateOfBirth(context), SizedBox(height: 24.v), _buildEmail(context), SizedBox(height: 24.v), _buildPhoneNumber(context), SizedBox(height: 24.v), Consumer(builder: (context, ref, _) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgFavorite, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_gender".tr, items: ref.watch(fillProfileNotifier).fillProfileModelObj?.dropdownItemList ?? [], onChanged: (value) {ref.watch(fillProfileNotifier).selectedDropDownValue = value;});}), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), centerTitle: true, title: AppbarTitle(text: "msg_fill_your_profile".tr)); } 
/// Section Widget
Widget _buildAvtar(BuildContext context) { return GestureDetector(onTap: () {onTapAvtar(context);}, child: SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, padding: EdgeInsets.all(2.h), alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEditPrimary))]))); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillProfileNotifier).fullNameController, hintText: "lbl_full_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillProfileNotifier).nameController, hintText: "lbl_nickname".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildDateOfBirth(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillProfileNotifier).dateOfBirthController, hintText: "lbl_date_of_birth".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconlyCurvedCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillProfileNotifier).emailController, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkBlueGray10015x15, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));}); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomPhoneNumber(country: ref.watch(fillProfileNotifier).selectedCountry ?? CountryPickerUtils.getCountryByPhoneCode('1'), controller: ref.watch(fillProfileNotifier).phoneNumberController, onTap: (Country value) {ref.watch(fillProfileNotifier).selectedCountry = value;});}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 52.v)); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onTapAvtar(BuildContext context) async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }
