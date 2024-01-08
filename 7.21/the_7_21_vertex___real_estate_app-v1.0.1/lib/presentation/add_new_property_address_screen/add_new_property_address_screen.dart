import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_drop_down.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyAddressScreen extends StatelessWidget {AddNewPropertyAddressScreen({Key? key}) : super(key: key);

TextEditingController addressController = TextEditingController();

TextEditingController inputFieldsController = TextEditingController();

TextEditingController nameController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController zipcodeController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.12, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("Property Address", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildAddress(context), SizedBox(height: 12.v), _buildInputFields(context), SizedBox(height: 12.v), _buildName(context), SizedBox(height: 12.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize)), hintText: "Select", hintStyle: CustomTextStyles.titleSmallBluegray500Medium, items: dropdownItemList, borderDecoration: DropDownStyleHelper.fillGray, fillColor: appTheme.gray300, onChanged: (value) {}), SizedBox(height: 12.v), _buildZipcode(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Add New Property"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildOneHundredEight(BuildContext context) { return CustomElevatedButton(height: 33.v, width: 76.h, text: "01 / 08", buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 7.v, bottom: 5.v), child: Text("Address", style: theme.textTheme.titleSmall)), _buildOneHundredEight(context)]); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomTextFormField(controller: addressController, hintText: "Street address"); } 
/// Section Widget
Widget _buildInputFields(BuildContext context) { return CustomTextFormField(controller: inputFieldsController, hintText: "Unit number", textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildName(BuildContext context) { return CustomTextFormField(controller: nameController, hintText: "City name"); } 
/// Section Widget
Widget _buildZipcode(BuildContext context) { return CustomTextFormField(controller: zipcodeController, hintText: "Zip code", textInputAction: TextInputAction.done, textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);}); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildNext(context)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewPropertyMeetWithAAgentScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertyMeetWithAAgentScreen); } 
 }
