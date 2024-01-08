import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_drop_down.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyHomeFactsScreen extends StatelessWidget {AddNewPropertyHomeFactsScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController inputFieldsController = TextEditingController();

TextEditingController inputFieldsController1 = TextEditingController();

TextEditingController inputFieldsController2 = TextEditingController();

TextEditingController inputFieldsController3 = TextEditingController();

TextEditingController inputFieldsController4 = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 5.v), child: Column(children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.75, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Text("Home facts", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 9.v), Container(width: 321.h, margin: EdgeInsets.only(right: 6.h), child: Text("This helps your agent prepare the most accurate home estimate", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50))), SizedBox(height: 16.v), _buildTypeProperty(context), SizedBox(height: 13.v), _buildInputs(context), SizedBox(height: 17.v), _buildInputs1(context), SizedBox(height: 17.v), _buildInputs2(context), SizedBox(height: 18.v), _buildTypeProperty1(context)]))))])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Add New Property"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("Home facts", style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "06 / 08", buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildTypeProperty(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Type Property", style: theme.textTheme.labelLarge), SizedBox(height: 6.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize)), hintText: "Select type", hintStyle: CustomTextStyles.titleSmallBluegray500Medium, items: dropdownItemList, borderDecoration: DropDownStyleHelper.fillGray, fillColor: appTheme.gray300, onChanged: (value) {})]); } 
/// Section Widget
Widget _buildInputs(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(children: [_buildTitle(context, fullBaths: "Finished Sq. Ft."), SizedBox(height: 6.v), CustomTextFormField(width: 158.h, controller: inputFieldsController, hintText: "0")]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Lot Size", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(width: 158.h, controller: inputFieldsController1, hintText: "0")])))]); } 
/// Section Widget
Widget _buildInputs1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Year Built", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(width: 158.h, controller: inputFieldsController2, hintText: "0")]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Bedrooms", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), CustomTextFormField(width: 158.h, controller: inputFieldsController3, hintText: "0")])))]); } 
/// Section Widget
Widget _buildInputs2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(children: [_buildTitle(context, fullBaths: "Full Baths"), SizedBox(height: 7.v), CustomTextFormField(width: 158.h, controller: inputFieldsController4, hintText: "0")]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: Column(children: [_buildTitle(context, fullBaths: "Security Deposit"), SizedBox(height: 6.v), CustomTextFormField(width: 158.h, controller: priceController, hintText: "0 ")])))]); } 
/// Section Widget
Widget _buildTypeProperty1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Monthly Rent*", style: theme.textTheme.labelLarge), SizedBox(height: 6.v), CustomTextFormField(controller: priceController1, hintText: "0 ", textInputAction: TextInputAction.done)]); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})); } 
/// Common widget
Widget _buildTitle(BuildContext context, {required String fullBaths, }) { return SizedBox(width: 158.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(fullBaths, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray500)), CustomImageView(imagePath: ImageConstant.imgVideoCamera, height: 16.adaptSize, width: 16.adaptSize)])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewPropertyContactScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertyContactScreen); } 
 }
