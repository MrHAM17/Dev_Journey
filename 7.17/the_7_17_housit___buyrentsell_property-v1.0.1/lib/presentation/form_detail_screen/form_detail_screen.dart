import '../form_detail_screen/widgets/layout2_item_widget.dart';import '../form_detail_screen/widgets/layout4_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class FormDetailScreen extends StatelessWidget {FormDetailScreen({Key? key}) : super(key: key);

TextEditingController formPasswordController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v), child: Column(children: [SizedBox(height: 38.v), Align(alignment: Alignment.centerLeft, child: Container(width: 281.h, margin: EdgeInsets.only(left: 17.h, right: 62.h), child: Text("Hi Josh, Fill detail of your \nreal estate ", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50)))), SizedBox(height: 40.v), Padding(padding: EdgeInsets.symmetric(horizontal: 17.h), child: CustomTextFormField(controller: formPasswordController, hintText: "The Lodge House", hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgHomeBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v))), SizedBox(height: 33.v), _buildListingType(context), SizedBox(height: 29.v), _buildPropertyCategory(context), SizedBox(height: 79.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h)])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Add Listing")); } 
/// Section Widget
Widget _buildListingType(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Listing type", style: theme.textTheme.titleMedium)), SizedBox(height: 20.v), Wrap(runSpacing: 7.v, spacing: 7.h, children: List<Widget>.generate(2, (index) => Layout2ItemWidget()))])); } 
/// Section Widget
Widget _buildPropertyCategory(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Property category", style: theme.textTheme.titleMedium)), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Wrap(runSpacing: 5.v, spacing: 5.h, children: List<Widget>.generate(5, (index) => Layout4ItemWidget())))])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addLocationScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addLocationScreen); } 
 }
