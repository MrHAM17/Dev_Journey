import '../my_cart_page/widgets/mycart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          _buildFrame1(context),
                          SizedBox(height: 24.v),
                          _buildMyCart(context),
                          SizedBox(height: 24.v),
                          _buildFrame(context,
                              feeDelivery: "Subtotal", price: " 134.94"),
                          SizedBox(height: 8.v),
                          _buildFrame(context,
                              feeDelivery: "Fee & Delivery", price: " 10"),
                          SizedBox(height: 6.v),
                          _buildFrame(context,
                              feeDelivery: "Total", price: " 144.94"),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                              text: "Send Code",
                              onPressed: () {
                                onTapSendCode(context);
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "My Cart"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingBag,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Promo Code or Vourchers", style: CustomTextStyles.bodyLarge18),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 5.v))
    ]);
  }

  /// Section Widget
  Widget _buildMyCart(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return MycartItemWidget();
        });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
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
            TextSpan(text: "", style: CustomTextStyles.titleMediumLime900),
            TextSpan(text: " 10", style: CustomTextStyles.titleMediumSemiBold16)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapSendCode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutScreen);
  }
}
