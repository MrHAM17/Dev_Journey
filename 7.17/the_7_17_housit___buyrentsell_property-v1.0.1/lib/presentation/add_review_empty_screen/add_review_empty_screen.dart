import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_rating_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddReviewEmptyScreen extends StatelessWidget {AddReviewEmptyScreen({Key? key}) : super(key: key);

TextEditingController formTextareaController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 49.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 272.h, margin: EdgeInsets.only(right: 55.h), child: Text("Hi, how was your overall\nexperience? 👋", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 27.v), Text("lorem ipsum dolor sit amet", style: theme.textTheme.bodySmall), SizedBox(height: 52.v), Padding(padding: EdgeInsets.only(right: 41.h), child: Row(children: [CustomRatingBar(initialRating: 0, itemSize: 40), Padding(padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v), child: Text("0.0", style: CustomTextStyles.headlineSmallMontserrat))])), SizedBox(height: 20.v), CustomTextFormField(controller: formTextareaController, hintText: "Write your experience in here (optional)", hintStyle: CustomTextStyles.bodySmallOnPrimaryContainer, textInputAction: TextInputAction.done, maxLines: 7, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v)), SizedBox(height: 15.v), CustomIconButton(height: 78.adaptSize, width: 78.adaptSize, padding: EdgeInsets.all(29.h), child: CustomImageView(imagePath: ImageConstant.imgIconPlus)), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Add Review")); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(text: "Submit", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapSubmit(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addReviewFillScreen when the action is triggered.
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addReviewFillScreen); } 
 }
