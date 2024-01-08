import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {SettingsScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(children: [_buildApplicationSettings(context), SizedBox(height: 33.v), _buildSupport(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Settings"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildApplicationSettings(BuildContext context) { return Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Application Settings", style: CustomTextStyles.titleSmallBluegray500ExtraBold)), SizedBox(height: 14.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 1.v), child: Text("Notification", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 1.v), child: Text("Dark Mode", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildText(context, country: "Language", tittle: "English"), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildText(context, country: "Country", tittle: "US")]); } 
/// Section Widget
Widget _buildSupport(BuildContext context) { return Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Support", style: CustomTextStyles.titleSmallBluegray500ExtraBold)), SizedBox(height: 14.v), _buildText1(context, privacyPolicy: "Terms of use"), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildText1(context, privacyPolicy: "Privacy Policy"), SizedBox(height: 14.v), Divider(), SizedBox(height: 15.v), _buildText1(context, privacyPolicy: "About"), SizedBox(height: 15.v), Divider(), SizedBox(height: 15.v), _buildText1(context, privacyPolicy: "FAQs")]); } 
/// Common widget
Widget _buildText(BuildContext context, {required String country, required String tittle, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(country, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primaryContainer))), Spacer(), Text(tittle, style: CustomTextStyles.titleSmallBluegray500_1.copyWith(color: appTheme.blueGray500)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 4.h, bottom: 2.v))]); } 
/// Common widget
Widget _buildText1(BuildContext context, {required String privacyPolicy, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(privacyPolicy, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primaryContainer))), CustomImageView(imagePath: ImageConstant.imgArrowRightBlueGray500, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v))]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the faqsGetHelpScreen when the action is triggered.
onTapFAQs(BuildContext context) { Navigator.pushNamed(context, AppRoutes.faqsGetHelpScreen); } 
 }
