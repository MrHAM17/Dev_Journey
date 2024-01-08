import '../mine_page/widgets/fifteen_item_widget.dart';
import '../mine_page/widgets/thirtytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  _buildThirtyTwo(context),
                  SizedBox(height: 24.v),
                  _buildTwentySix(context),
                  SizedBox(height: 23.v),
                  _buildRecentTransfer(context),
                  SizedBox(height: 49.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        title: Container(
            width: 111.h,
            margin: EdgeInsets.only(left: 24.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Hello Alex\n",
                      style: CustomTextStyles.titleMediumSemiBold18_1),
                  TextSpan(
                      text: "Welcome back!",
                      style: CustomTextStyles.titleSmallSecondaryContainer_1)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse308,
              margin: EdgeInsets.fromLTRB(24.h, 6.v, 24.h, 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return SizedBox(
        height: 163.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ThirtytwoItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomElevatedButton(
          height: 40.v,
          width: 125.h,
          text: "Transfer",
          leftIcon: Container(
              margin: EdgeInsets.only(right: 9.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.fillIndigoA,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700),
      CustomElevatedButton(
          height: 40.v,
          width: 125.h,
          text: "Request",
          leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose14x14,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.fillGreen,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
          onPressed: () {
            onTapRequest(context);
          }),
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(imagePath: ImageConstant.imgMore))
    ]);
  }

  /// Section Widget
  Widget _buildRecentTransfer(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Recent Transfer", style: CustomTextStyles.titleMediumSemiBold18),
        GestureDetector(
            onTap: () {
              onTapTxtSeeAll(context);
            },
            child: Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                child: Text("See All",
                    style: CustomTextStyles.labelLargeSecondaryContainer)))
      ]),
      SizedBox(height: 13.v),
      ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 15.v);
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return FifteenItemWidget();
          })
    ]);
  }

  /// Navigates to the transferRequestScreen when the action is triggered.
  onTapRequest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transferRequestScreen);
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.historyScreen);
  }
}
