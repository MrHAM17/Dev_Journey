import 'controller/logout_modal_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class LogoutModalBottomsheet extends StatelessWidget {LogoutModalBottomsheet(this.controller, {Key? key}) : super(key: key);

LogoutModalController controller;

@override Widget build(BuildContext context) { return _buildAutoLayoutVertical(); } 
/// Section Widget
Widget _buildCancel() { return Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgFrameGray300, height: 3.v, width: 38.h), SizedBox(height: 27.v), Text("lbl_logout".tr, style: CustomTextStyles.headlineSmallRedA200), SizedBox(height: 46.v), Text("msg_are_you_sure_you".tr, style: CustomTextStyles.titleLargeErrorContainer), SizedBox(height: 22.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 166.h, text: "lbl_cancel".tr, buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapCancel();}), CustomElevatedButton(width: 166.h, text: "lbl_yes_log_out".tr, margin: EdgeInsets.only(left: 24.h), buttonStyle: CustomButtonStyles.fillSecondaryContainer, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16)])]))); } 
/// Section Widget
Widget _buildAutoLayoutVertical() { return Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: theme.colorScheme.onErrorContainer, shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.gray100, width: 1.h), borderRadius: BorderRadiusStyle.customBorderTL40), child: Container(height: 266.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 7.v), decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 80.v), child: SizedBox(width: 380.h, child: Divider()))), _buildCancel()]))); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapCancel() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }
