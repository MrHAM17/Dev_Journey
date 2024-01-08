import 'controller/messages_box_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';class MessagesBoxScreen extends GetWidget<MessagesBoxController> {const MessagesBoxScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomElevatedButton(height: 24.v, width: 75.h, text: "lbl_today".tr, buttonStyle: CustomButtonStyles.fillGrayTL6, buttonTextStyle: CustomTextStyles.labelMediumGray600, alignment: Alignment.center), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 80.h), child: _buildAutoLayoutHorizontal(loremIpsumDolor: "msg_hi_theresa_good".tr, time: "lbl_10_002".tr)), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(left: 80.h), child: _buildAutoLayoutHorizontal1(description: "msg_how_are_you_today_we".tr, time: "lbl_10_002".tr)), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(right: 80.h), child: _buildAutoLayoutHorizontal(loremIpsumDolor: "msg_hi_morning_too".tr, time: "lbl_10_002".tr)), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 80.h), child: _buildAutoLayoutHorizontal1(description: "msg_yes_you_re_right_i".tr, time: "lbl_10_002".tr)), Spacer(), SizedBox(height: 24.v), _buildAutoLayoutHorizontal6()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_theresa_varnes".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgCall, margin: EdgeInsets.only(left: 24.h, top: 10.v, right: 10.h)), AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray900, margin: EdgeInsets.only(left: 20.h, top: 10.v, right: 34.h))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6() { return Row(children: [Expanded(child: CustomTextFormField(controller: controller.messageController, hintText: "lbl_message2".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgCategoriesstickerComponentadditionalIcons, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 17.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgCamera, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v))), Padding(padding: EdgeInsets.only(left: 12.h), child: CustomIconButton(height: 56.adaptSize, width: 56.adaptSize, padding: EdgeInsets.all(16.h), decoration: IconButtonStyleHelper.gradientDeepOrangeAToOrange, child: CustomImageView(imagePath: ImageConstant.imgAutoLayoutHorizontalOnerrorcontainer56x56)))]); } 
/// Common widget
Widget _buildAutoLayoutHorizontal({required String loremIpsumDolor, required String time, }) { return Container(width: 300.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text(loremIpsumDolor, style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray900)), SizedBox(height: 6.v), Align(alignment: Alignment.centerRight, child: Text(time, style: CustomTextStyles.bodySmallGray600.copyWith(color: appTheme.gray600)))])); } 
/// Common widget
Widget _buildAutoLayoutHorizontal1({required String description, required String time, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 9.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Expanded(child: Container(width: 202.h, margin: EdgeInsets.only(top: 5.v), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_yes_you_re_right_i2".tr, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40)), TextSpan(text: "lbl3".tr, style: theme.textTheme.bodyLarge)]), textAlign: TextAlign.left))), Padding(padding: EdgeInsets.only(left: 29.h, top: 55.v, bottom: 2.v), child: Text(time, style: CustomTextStyles.bodySmallGray600.copyWith(color: appTheme.gray600)))])); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }
