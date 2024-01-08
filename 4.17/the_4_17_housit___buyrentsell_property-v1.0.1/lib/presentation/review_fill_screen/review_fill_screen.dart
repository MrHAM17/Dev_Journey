import '../review_fill_screen/widgets/layout_item_widget.dart';import 'controller/review_fill_controller.dart';import 'models/layout_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';class ReviewFillScreen extends GetWidget<ReviewFillController> {const ReviewFillScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 17.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, bottom: 5.v), child: Column(children: [_buildEstatesCardTransaction(), SizedBox(height: 37.v), _buildPeriod(), SizedBox(height: 37.v), _buildNote(), SizedBox(height: 39.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_payment_method".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildLayout(), SizedBox(height: 36.v), _buildVoucher(), SizedBox(height: 50.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 114.h))]))))])), bottomNavigationBar: _buildNext())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "msg_transaction_review".tr)); } 
/// Section Widget
Widget _buildEstatesCardTransaction() { return Align(alignment: Alignment.centerLeft, child: Container(margin: EdgeInsets.only(right: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 140.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape20, height: 140.v, width: 168.h, radius: BorderRadius.circular(18.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 75.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.fromLTRB(16.h, 8.v, 9.h, 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 88.h, child: Text("msg_sky_dandelions_apartment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 12.adaptSize, width: 12.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))]), SizedBox(height: 18.v), CustomElevatedButton(height: 50.v, width: 94.h, text: "lbl_rent".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h)), buttonStyle: CustomButtonStyles.fillWhiteATL25, buttonTextStyle: theme.textTheme.labelMedium!, alignment: Alignment.centerRight)]))]))); } 
/// Section Widget
Widget _buildPeriod() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_period".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 22.h), child: Row(children: [CustomTextFormField(width: 163.h, controller: controller.formDateFillController, hintText: "lbl_11_28_2021".tr, hintStyle: CustomTextStyles.labelLargeSemiBold, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)), Padding(padding: EdgeInsets.only(left: 6.h), child: CustomTextFormField(width: 160.h, controller: controller.formDateFillController1, hintText: "lbl_01_28_2022".tr, hintStyle: CustomTextStyles.labelLargeSemiBold, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)))]))]); } 
/// Section Widget
Widget _buildNote() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_note_for_owner".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: CustomTextFormField(controller: controller.televisionController, hintText: "msg_please_clean_before".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgTelevision, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)))]); } 
/// Section Widget
Widget _buildLayout() { return SizedBox(height: 180.v, child: Obx(() => ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: controller.reviewFillModelObj.value.layoutItemList.value.length, itemBuilder: (context, index) {LayoutItemModel model = controller.reviewFillModelObj.value.layoutItemList.value[index]; return LayoutItemWidget(model);}))); } 
/// Section Widget
Widget _buildVoucher() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_have_a_voucher".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("lbl_change_voucher".tr, style: CustomTextStyles.labelLargePrimary))])), SizedBox(height: 16.v), Container(margin: EdgeInsets.only(right: 24.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.gradientGreenAToTealA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomElevatedButton(height: 52.v, width: 128.h, text: "lbl_hlwn40".tr, margin: EdgeInsets.only(bottom: 1.v), buttonStyle: CustomButtonStyles.fillGreenATL17, buttonTextStyle: CustomTextStyles.titleMediumMontserratWhiteA700Bold), Padding(padding: EdgeInsets.only(left: 10.h, top: 10.v, bottom: 10.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_halloween_sale".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), Text("msg_get_40_off_on_all".tr, style: theme.textTheme.labelSmall)]))]))]); } 
/// Section Widget
Widget _buildNext() { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the summaryScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.summaryScreen, ); } 
 }
