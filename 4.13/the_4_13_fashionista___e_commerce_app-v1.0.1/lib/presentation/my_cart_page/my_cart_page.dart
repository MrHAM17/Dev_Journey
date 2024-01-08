import '../my_cart_page/widgets/mycart_item_widget.dart';
import 'controller/my_cart_controller.dart';
import 'models/my_cart_model.dart';
import 'models/mycart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MyCartPage extends StatelessWidget {
  MyCartPage({Key? key}) : super(key: key);

  MyCartController controller = Get.put(MyCartController(MyCartModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          _buildFrame1(),
                          SizedBox(height: 24.v),
                          _buildMyCart(),
                          SizedBox(height: 24.v),
                          _buildFrame(
                              feeDelivery: "lbl_subtotal".tr,
                              price: "lbl_134_94".tr),
                          SizedBox(height: 8.v),
                          _buildFrame(
                              feeDelivery: "lbl_fee_delivery".tr,
                              price: "lbl_10".tr),
                          SizedBox(height: 6.v),
                          _buildFrame(
                              feeDelivery: "lbl_total".tr,
                              price: "lbl_144_94".tr),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                              text: "lbl_send_code2".tr,
                              onPressed: () {
                                onTapSendCode();
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_my_cart".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingBag,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("msg_promo_code_or_vourchers".tr,
          style: CustomTextStyles.bodyLarge18),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 5.v))
    ]);
  }

  /// Section Widget
  Widget _buildMyCart() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: controller.myCartModelObj.value.mycartItemList.value.length,
        itemBuilder: (context, index) {
          MycartItemModel model =
              controller.myCartModelObj.value.mycartItemList.value[index];
          return MycartItemWidget(model);
        }));
  }

  /// Common widget
  Widget _buildFrame({
    required String feeDelivery,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(feeDelivery,
              style: CustomTextStyles.bodyLargeGray500_1
                  .copyWith(color: appTheme.gray500))),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl".tr, style: CustomTextStyles.titleMediumLime900),
            TextSpan(
                text: "lbl_102".tr,
                style: CustomTextStyles.titleMediumSemiBold16)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapSendCode() {
    Get.toNamed(
      AppRoutes.checkoutScreen,
    );
  }
}
