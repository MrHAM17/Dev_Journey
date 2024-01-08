import '../select_payment_method_screen/widgets/selectpaymentmethod_item_widget.dart';import 'controller/select_payment_method_controller.dart';import 'models/selectpaymentmethod_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';class SelectPaymentMethodScreen extends GetWidget<SelectPaymentMethodController> {const SelectPaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_select_the_payment".tr, style: CustomTextStyles.titleMediumPrimaryMedium16)), SizedBox(height: 23.v), _buildSelectPaymentMethod(), SizedBox(height: 30.v), CustomOutlinedButton(text: "lbl_add_new_card".tr, onPressed: () {onTapAddNewCard();}), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v)), title: AppbarTitle(text: "lbl_payment".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyLightScan, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 14.v))]); } 
/// Section Widget
Widget _buildSelectPaymentMethod() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.selectPaymentMethodModelObj.value.selectpaymentmethodItemList.value.length, itemBuilder: (context, index) {SelectpaymentmethodItemModel model = controller.selectPaymentMethodModelObj.value.selectpaymentmethodItemList.value[index]; return SelectpaymentmethodItemWidget(model);})); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), onPressed: () {onTapContinue();}); } 
/// Navigates to the addNewCardScreen when the action is triggered.
onTapAddNewCard() { Get.toNamed(AppRoutes.addNewCardScreen, ); } 
/// Navigates to the paymentSummaryScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.paymentSummaryScreen, ); } 
 }
