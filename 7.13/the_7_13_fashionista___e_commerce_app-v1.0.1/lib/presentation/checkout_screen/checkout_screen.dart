import '../checkout_screen/widgets/checkout_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_icon_button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(children: [
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildFrame1(context),
                  SizedBox(height: 63.v),
                  _buildFrame2(context),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      text: "Pay Now",
                      onPressed: () {
                        onTapPayNow(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
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
        title: AppbarSubtitleOne(text: "Checkout"));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Delivery Address", style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      Row(children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: CustomIconButton(
                height: 42.adaptSize,
                width: 42.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.outlineGray,
                child: CustomImageView(imagePath: ImageConstant.imgLinkedin))),
        Padding(
            padding: EdgeInsets.only(left: 12.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Address", style: theme.textTheme.bodyMedium),
              SizedBox(height: 2.v),
              Text("NSW, Australia", style: CustomTextStyles.bodyMediumLime900)
            ]))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Payment Mathod", style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 8.v);
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return CheckoutItemWidget();
          })
    ]);
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Total", style: CustomTextStyles.titleMediumGray500),
      RichText(
          text: TextSpan(children: [
            TextSpan(text: "", style: CustomTextStyles.titleMediumLime900),
            TextSpan(
                text: " 144.94", style: CustomTextStyles.titleMediumSemiBold16)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the completeScreen when the action is triggered.
  onTapPayNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.completeScreen);
  }
}
