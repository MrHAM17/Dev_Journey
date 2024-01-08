import 'controller/payment_summary_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/payment_success_dialog/payment_success_dialog.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/payment_success_dialog/controller/payment_success_controller.dart';class PaymentSummaryScreen extends GetWidget<PaymentSummaryController> {const PaymentSummaryScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildAutoLayoutVertical(), SizedBox(height: 24.v), _buildAutoLayoutVertical1(), SizedBox(height: 24.v), _buildTypeCreditCard(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "lbl_review_summary".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutVertical() { return Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.gradientOrangeAToOrangeA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgUserWhiteA700, height: 44.v, width: 50.h, alignment: Alignment.center), SizedBox(height: 23.v), Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_9_99".tr, style: CustomTextStyles.headlineLargeWhiteA700), Padding(padding: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 8.v), child: Text("lbl_month".tr, style: CustomTextStyles.titleMediumGray100))])), SizedBox(height: 15.v), Divider(), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(right: 27.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCategoriesCheck, height: 32.adaptSize, width: 32.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 8.v, bottom: 4.v), child: Text("msg_listening_with_better".tr, style: CustomTextStyles.titleMediumWhiteA700Medium))])), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 22.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCategoriesCheck, height: 32.adaptSize, width: 32.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 8.v, bottom: 4.v), child: Text("msg_listening_without".tr, style: CustomTextStyles.titleMediumWhiteA700Medium))])), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 25.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCategoriesCheck, height: 32.adaptSize, width: 32.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 4.v), child: Text("msg_shuffle_play_download".tr, style: CustomTextStyles.titleMediumWhiteA700Medium))]))])); } 
/// Section Widget
Widget _buildAutoLayoutVertical1() { return Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.outlineOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAutoLayoutHorizontal(tax: "lbl_amount".tr, price: "lbl_9_99".tr), SizedBox(height: 22.v), _buildAutoLayoutHorizontal(tax: "lbl_tax".tr, price: "lbl_1_99".tr), SizedBox(height: 20.v), Divider(), SizedBox(height: 20.v), _buildAutoLayoutHorizontal(tax: "lbl_total".tr, price: "lbl_11_99".tr)])); } 
/// Section Widget
Widget _buildTypeCreditCard() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v), decoration: AppDecoration.outlineOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgUserYellow800, height: 34.v, width: 44.h), Padding(padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 6.v), child: Text("msg2".tr, style: theme.textTheme.titleMedium)), Spacer(), Padding(padding: EdgeInsets.only(top: 9.v, bottom: 5.v), child: Text("lbl_change".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16))])); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), onPressed: () {onTapContinue();}); } 
/// Common widget
Widget _buildAutoLayoutHorizontal({required String tax, required String price, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: Text(tax, style: CustomTextStyles.titleSmallGray70001Medium.copyWith(color: appTheme.gray70001))), Text(price, style: CustomTextStyles.titleMediumPrimarySemiBold.copyWith(color: theme.colorScheme.primary))]); } 

/// Displays a dialog with the [PaymentSuccessDialog] content.
onTapContinue() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:PaymentSuccessDialog(Get.put(PaymentSuccessController(),),),)); } 
 }
