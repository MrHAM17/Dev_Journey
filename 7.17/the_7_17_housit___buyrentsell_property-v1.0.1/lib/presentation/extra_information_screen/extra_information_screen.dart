import '../extra_information_screen/widgets/layout11_item_widget.dart';import '../extra_information_screen/widgets/layout6_item_widget.dart';import '../extra_information_screen/widgets/layout8_item_widget.dart';import '../extra_information_screen/widgets/layout9_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';import 'package:the_7_17_housit___buyrentsell_property/presentation/extra_information_success_bottomsheet/extra_information_success_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class ExtraInformationScreen extends StatelessWidget {ExtraInformationScreen({Key? key}) : super(key: key);

TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 49.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, right: 3.h, bottom: 5.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Container(width: 267.h, margin: EdgeInsets.only(right: 81.h), child: Text("Almost finish, complete\nthe listing", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50)))), SizedBox(height: 43.v), _buildSellPrice(context), SizedBox(height: 37.v), _buildRentPrice(context), SizedBox(height: 38.v), _buildPropertyFeatures(context), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Text("Total Rooms", style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildLayout(context), SizedBox(height: 36.v), _buildEnvironment(context), SizedBox(height: 46.v), CustomImageView(imagePath: ImageConstant.imgProgressBarGradient, height: 1.v, width: 100.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 114.h))]))))])), bottomNavigationBar: _buildFinish(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Add Listing")); } 
/// Section Widget
Widget _buildSellPrice(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Sell Price", style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 27.h), child: CustomTextFormField(controller: priceController, hintText: " 180,000", hintStyle: CustomTextStyles.labelLargeSemiBold, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)))]); } 
/// Section Widget
Widget _buildRentPrice(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Rent Price", style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: CustomTextFormField(controller: priceController1, hintText: " 315", hintStyle: CustomTextStyles.labelLargeSemiBold, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v))), SizedBox(height: 15.v), Wrap(runSpacing: 3.v, spacing: 3.h, children: List<Widget>.generate(2, (index) => Layout6ItemWidget()))]); } 
/// Section Widget
Widget _buildPropertyFeatures(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Property Features", style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 21.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 15.v);}, itemCount: 3, itemBuilder: (context, index) {return Layout8ItemWidget();}))]); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(4, (index) => Layout9ItemWidget())); } 
/// Section Widget
Widget _buildEnvironment(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Environment / Facilities", style: CustomTextStyles.titleMediumBold), SizedBox(height: 16.v), Wrap(runSpacing: 4.v, spacing: 4.h, children: List<Widget>.generate(7, (index) => Layout11ItemWidget()))])); } 
/// Section Widget
Widget _buildFinish(BuildContext context) { return CustomElevatedButton(text: "Finish", margin: EdgeInsets.only(left: 25.h, right: 23.h, bottom: 24.v), onPressed: () {onTapFinish(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [ExtraInformationSuccessBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapFinish(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ExtraInformationSuccessBottomsheet(),isScrollControlled: true); } 
 }
