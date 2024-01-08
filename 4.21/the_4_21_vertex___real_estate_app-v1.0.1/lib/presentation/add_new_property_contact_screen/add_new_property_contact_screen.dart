import 'controller/add_new_property_contact_controller.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/custom_phone_number.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyContactScreen extends GetWidget<AddNewPropertyContactController> {AddNewPropertyContactScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildAddressAndProgress(), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.87, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("msg_tell_us_a_little".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildPhoneNumber(), SizedBox(height: 11.v), _buildIsThereAnythingElseWe(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildBTN())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildSevenHundredEight() { return CustomElevatedButton(height: 33.v, width: 79.h, text: "lbl_07_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700); } 
/// Section Widget
Widget _buildAddressAndProgress() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("lbl_contact".tr, style: theme.textTheme.titleSmall)), _buildSevenHundredEight()]); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildIsThereAnythingElseWe() { return CustomElevatedButton(height: 49.v, text: "msg_is_there_anything".tr, buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleSmallBluegray500Medium); } 
/// Section Widget
Widget _buildNext() { return CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();}); } 
/// Section Widget
Widget _buildBTN() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildNext()); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the addNewPropertySelectAmenitiesScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.addNewPropertySelectAmenitiesScreen, ); } 
 }
