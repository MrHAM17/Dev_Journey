import '../cart_screen/widgets/drugs2_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/drugs2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_04_health_care/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_04_health_care/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_04_health_care/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_04_health_care/widgets/custom_elevated_button.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  _buildDrugs(),
                  SizedBox(height: 27.v),
                  _buildPaymentDetail(),
                  SizedBox(height: 25.v),
                  Divider(),
                  SizedBox(height: 27.v),
                  _buildPaymentMethod(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildFiftyEight()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_my_cart".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildDrugs() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 25.v);
        },
        itemCount: controller.cartModelObj.value.drugs2ItemList.value.length,
        itemBuilder: (context, index) {
          Drugs2ItemModel model =
              controller.cartModelObj.value.drugs2ItemList.value[index];
          return Drugs2ItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildPaymentDetail() {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_payment_detail".tr,
              style: theme.textTheme.titleMedium)),
      SizedBox(height: 12.v),
      _buildAdminFee(adminFee: "lbl_consultation".tr, price: "lbl_60_00".tr),
      SizedBox(height: 11.v),
      _buildAdminFee(adminFee: "lbl_admin_fee".tr, price: "lbl_01_00".tr),
      SizedBox(height: 11.v),
      _buildAdminFee(adminFee: "msg_aditional_discount".tr, price: "lbl".tr),
      SizedBox(height: 11.v),
      _buildAdminFee(adminFee: "lbl_total".tr, price: "lbl_61_00".tr)
    ]);
  }

  /// Section Widget
  Widget _buildPaymentMethod() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_payment_method".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      _buildAdminFee(adminFee: "lbl_visa".tr, price: "lbl_change".tr)
    ]);
  }

  /// Section Widget
  Widget _buildFiftyEight() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 26.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 6.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_total".tr,
                            style: CustomTextStyles.titleSmallGray500),
                        Opacity(
                            opacity: 0.9,
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("lbl_20_98".tr,
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary)))
                      ])),
              CustomElevatedButton(width: 192.h, text: "lbl_checkout".tr)
            ]));
  }

  /// Common widget
  Widget _buildAdminFee({
    required String adminFee,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(adminFee,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.onPrimary)),
      Text(price,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
