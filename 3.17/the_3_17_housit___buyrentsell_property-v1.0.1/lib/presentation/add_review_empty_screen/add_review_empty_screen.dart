import 'bloc/add_review_empty_bloc.dart';import 'models/add_review_empty_model.dart';import 'package:flutter/material.dart';import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_rating_bar.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';class AddReviewEmptyScreen extends StatelessWidget {const AddReviewEmptyScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddReviewEmptyBloc>(create: (context) => AddReviewEmptyBloc(AddReviewEmptyState(addReviewEmptyModelObj: AddReviewEmptyModel()))..add(AddReviewEmptyInitialEvent()), child: AddReviewEmptyScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 49.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 272.h, margin: EdgeInsets.only(right: 55.h), child: Text("msg_hi_how_was_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 27.v), Text("msg_lorem_ipsum_dolor6".tr, style: theme.textTheme.bodySmall), SizedBox(height: 52.v), Padding(padding: EdgeInsets.only(right: 41.h), child: Row(children: [CustomRatingBar(initialRating: 0, itemSize: 40), Padding(padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v), child: Text("lbl_0_0".tr, style: CustomTextStyles.headlineSmallMontserrat))])), SizedBox(height: 20.v), BlocSelector<AddReviewEmptyBloc, AddReviewEmptyState, TextEditingController?>(selector: (state) => state.formTextareaController, builder: (context, formTextareaController) {return CustomTextFormField(controller: formTextareaController, hintText: "msg_write_your_experience".tr, hintStyle: CustomTextStyles.bodySmallOnPrimaryContainer, textInputAction: TextInputAction.done, maxLines: 7, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v));}), SizedBox(height: 15.v), CustomIconButton(height: 78.adaptSize, width: 78.adaptSize, padding: EdgeInsets.all(29.h), child: CustomImageView(imagePath: ImageConstant.imgIconPlus)), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_add_review".tr)); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapSubmit(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addReviewFillScreen when the action is triggered.
onTapSubmit(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addReviewFillScreen, ); } 
 }
