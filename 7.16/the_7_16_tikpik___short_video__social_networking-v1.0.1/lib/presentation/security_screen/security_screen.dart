import 'package:flutter/material.dart';import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable
class SecurityScreen extends StatelessWidget {SecurityScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Control", style: theme.textTheme.titleLarge)), SizedBox(height: 26.v), _buildAutoLayoutHorizontal(context, manageDevices: "Security Alerts", arrowRight: ImageConstant.imgArrowRightGray900), SizedBox(height: 26.v), _buildAutoLayoutHorizontal(context, manageDevices: "Manage Devices", arrowRight: ImageConstant.imgArrowRightGray900), SizedBox(height: 25.v), _buildAutoLayoutHorizontal(context, manageDevices: "Manage Permission", arrowRight: ImageConstant.imgArrowRightGray900), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("Security", style: theme.textTheme.titleLarge)), SizedBox(height: 22.v), _buildAutoLayoutHorizontal4(context), SizedBox(height: 25.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 25.v), _buildAutoLayoutHorizontal6(context), SizedBox(height: 27.v), _buildAutoLayoutHorizontal(context, manageDevices: "Google Authenticator", arrowRight: ImageConstant.imgArrowRightPrimary), SizedBox(height: 23.v), CustomElevatedButton(text: "Change PIN", buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary), SizedBox(height: 24.v), CustomElevatedButton(text: "Change Password", buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Security", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Remember me", style: CustomTextStyles.titleMediumErrorContainerSemiBold)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Face ID", style: CustomTextStyles.titleMediumErrorContainerSemiBold)), CustomSwitch(value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Biometric ID", style: CustomTextStyles.titleMediumErrorContainerSemiBold)), CustomSwitch(value: isSelectedSwitch2, onChange: (value) {isSelectedSwitch2 = value;})]); } 
/// Common widget
Widget _buildAutoLayoutHorizontal(BuildContext context, {required String manageDevices, required String arrowRight, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(manageDevices, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray900))), CustomImageView(imagePath: arrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
