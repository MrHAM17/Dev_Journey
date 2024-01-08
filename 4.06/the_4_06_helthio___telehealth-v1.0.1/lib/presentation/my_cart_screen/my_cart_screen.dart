import '../my_cart_screen/widgets/durgs_item_widget.dart';
import 'controller/my_cart_controller.dart';
import 'models/durgs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_06_helthio___telehealth/widgets/custom_elevated_button.dart';

class MyCartScreen extends GetWidget<MyCartController> {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
                child: Column(children: [
                  _buildDurgs(),
                  SizedBox(height: 34.v),
                  _buildPaymentDetail1(),
                  SizedBox(height: 19.v),
                  _buildPaymentMethod(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildCheckout()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 10.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_my_cart".tr));
  }

  /// Section Widget
  Widget _buildDurgs() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 20.v);
        },
        itemCount: controller.myCartModelObj.value.durgsItemList.value.length,
        itemBuilder: (context, index) {
          DurgsItemModel model =
              controller.myCartModelObj.value.durgsItemList.value[index];
          return DurgsItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildPaymentDetail() {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_payment_detail".tr,
              style: theme.textTheme.titleMedium)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildTotal(total: "lbl_subtotal".tr, price: "lbl_25_98".tr)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: _buildCard(vISA: "lbl_taxes".tr, change: "lbl_1_00".tr)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildTotal(total: "lbl_total".tr, price: "lbl_26_98".tr))
    ]);
  }

  /// Section Widget
  Widget _buildPaymentDetail1() {
    return Column(
        children: [_buildPaymentDetail(), SizedBox(height: 13.v), Divider()]);
  }

  /// Section Widget
  Widget _buildPaymentMethod() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text("lbl_payment_method".tr,
              style: theme.textTheme.titleMedium)),
      SizedBox(height: 10.v),
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: _buildCard(vISA: "lbl_visa".tr, change: "lbl_change".tr))
    ]);
  }

  /// Section Widget
  Widget _buildCheckout() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 26.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_total".tr, style: theme.textTheme.titleSmall),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text("lbl_26_982".tr,
                            style: CustomTextStyles.titleMedium18))
                  ])),
          CustomElevatedButton(
              height: 50.v,
              width: 192.h,
              text: "lbl_checkout".tr,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
              onPressed: () {
                onTapCheckout();
              })
        ]));
  }

  /// Common widget
  Widget _buildTotal({
    required String total,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(total,
          style: CustomTextStyles.titleSmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary)),
      Text(price,
          style: CustomTextStyles.titleSmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Common widget
  Widget _buildCard({
    required String vISA,
    required String change,
  }) {
    return Container(
        padding: EdgeInsets.all(13.h),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(vISA,
                      style: CustomTextStyles.titleMediumInterPrimaryContainer
                          .copyWith(
                              color: theme.colorScheme.primaryContainer))),
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(change,
                      style: CustomTextStyles.labelLargePrimary_1
                          .copyWith(color: theme.colorScheme.primary)))
            ]));
  }

  onTapCheckout() {
    // TODO: implement Actions
  }
}
