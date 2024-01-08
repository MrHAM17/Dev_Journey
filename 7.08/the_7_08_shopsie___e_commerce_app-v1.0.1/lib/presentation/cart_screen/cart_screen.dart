import '../cart_screen/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(child: _buildCart(context)))
                ])),
            bottomNavigationBar: _buildPay11180(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Shopsie"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCart(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.v),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("MY CART", style: CustomTextStyles.bodyLarge_1))),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.v),
                        child: SizedBox(
                            width: 358.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300)));
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CartItemWidget();
                  })),
          SizedBox(height: 98.v),
          Divider(),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text("SUB-TOTAL",
                            style: CustomTextStyles.titleSmallOnPrimary)),
                    Text("111.80", style: theme.textTheme.titleMedium)
                  ])),
          SizedBox(height: 21.v),
          Divider()
        ]));
  }

  /// Section Widget
  Widget _buildPay11180(BuildContext context) {
    return CustomElevatedButton(
        text: "Pay 111.80",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 64.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
