import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_outlined_button.dart';class SelectAppAlarmScreen extends StatelessWidget {const SelectAppAlarmScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildMightyCincoFamily(context), SizedBox(height: 24.v), _buildErrorMsg(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Review your tour"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildMightyCincoFamily(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Text("Mighty Cinco Family", style: theme.textTheme.titleMedium)), SizedBox(height: 2.v), Align(alignment: Alignment.centerLeft, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedinPrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Jakarta, Indonesia", style: CustomTextStyles.bodySmallPrimaryContainer_1))])), SizedBox(height: 11.v), Divider(), SizedBox(height: 17.v), _buildTime(context, tittle: "Date", time: "Mon, April 4"), SizedBox(height: 12.v), _buildTime(context, tittle: "Time", time: "4:00 - 4:45 PM")])); } 
/// Section Widget
Widget _buildErrorMsg(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), decoration: AppDecoration.fillRed40019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgVideoCameraSecondarycontainer, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 18.v, bottom: 16.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Your identity is not verified", style: CustomTextStyles.titleSmallSecondaryContainer), SizedBox(height: 1.v), SizedBox(width: 234.h, child: Text("Verify your identity before schedule the tour", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallSecondaryContainer.copyWith(height: 1.50)))])))])); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomOutlinedButton(width: 156.h, text: "Edit", buttonStyle: CustomButtonStyles.outlinePrimaryTL10, buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold), CustomElevatedButton(width: 156.h, text: "Schedule", margin: EdgeInsets.only(left: 15.h), buttonTextStyle: CustomTextStyles.titleMediumWhiteA700, onPressed: () {onTapSchedule(context);})])); } 
/// Common widget
Widget _buildTime(BuildContext context, {required String tittle, required String time, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(tittle, style: CustomTextStyles.titleSmallBluegray500_1.copyWith(color: appTheme.blueGray500))), Text(time, style: CustomTextStyles.titleMediumBold.copyWith(color: theme.colorScheme.primaryContainer))]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the confirmRequestScreen when the action is triggered.
onTapSchedule(BuildContext context) { Navigator.pushNamed(context, AppRoutes.confirmRequestScreen); } 
 }
