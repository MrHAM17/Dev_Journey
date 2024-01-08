import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

class NationalBankPage extends StatelessWidget {
  const NationalBankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 12.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSettingsTeal800,
                      height: 98.adaptSize,
                      width: 98.adaptSize),
                  SizedBox(height: 15.v),
                  Text("-444.00", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 3.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgContrastPrimarycontainer,
                        height: 15.v,
                        width: 23.h),
                    CustomImageView(
                        imagePath: ImageConstant.img1Gray500,
                        height: 4.v,
                        width: 32.h,
                        margin:
                            EdgeInsets.only(left: 19.h, top: 6.v, bottom: 5.v)),
                    CustomImageView(
                        imagePath: ImageConstant.img1Gray500,
                        height: 4.v,
                        width: 32.h,
                        margin:
                            EdgeInsets.only(left: 10.h, top: 6.v, bottom: 5.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("4023",
                            style: CustomTextStyles.labelMediumGray500)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("5534",
                            style: CustomTextStyles.labelMediumGray500))
                  ]),
                  SizedBox(height: 11.v),
                  Text("12:30 PM, 25 June 2022",
                      style: theme.textTheme.labelMedium),
                  SizedBox(height: 38.v),
                  _buildOneHundredFifty(context),
                  SizedBox(height: 28.v),
                  _buildPurchoses(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "National Bank"),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildOneHundredFifty(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("150", style: theme.textTheme.labelMedium),
        SizedBox(height: 37.v),
        Text("100", style: theme.textTheme.labelMedium),
        SizedBox(height: 38.v),
        Text("50", style: theme.textTheme.labelMedium),
        SizedBox(height: 36.v),
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text("0", style: theme.textTheme.labelMedium))
      ]),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 9.h, top: 7.v, bottom: 7.v),
              child: Column(children: [
                Container(
                    height: 1.v,
                    width: 296.h,
                    decoration: BoxDecoration(color: appTheme.gray200)),
                SizedBox(height: 5.v),
                SizedBox(
                    height: 151.v,
                    width: 296.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              decoration: AppDecoration.fillGray200,
                              child: Divider(color: appTheme.indigo100))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(top: 46.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: 1.v,
                                        width: 296.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray200)),
                                    SizedBox(height: 51.v),
                                    Container(
                                        height: 1.v,
                                        width: 296.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray200))
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroupGray200,
                          height: 151.v,
                          width: 272.h,
                          alignment: Alignment.center)
                    ]))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildPurchoses(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("10,790.00 Total Purchases",
              style: CustomTextStyles.titleSmallSecondaryContainer)),
      SizedBox(height: 16.v),
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillTeal,
                child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpTeal800)),
            Padding(
                padding: EdgeInsets.only(left: 15.h, top: 6.v, bottom: 6.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-220.00", style: theme.textTheme.titleSmall),
                      SizedBox(height: 1.v),
                      Text("10:30 PM, 18 June, 2022",
                          style: theme.textTheme.labelMedium)
                    ])),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
                height: 5.v,
                width: 10.h,
                margin: EdgeInsets.only(top: 23.v, bottom: 22.v))
          ])),
      SizedBox(height: 15.v),
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillTeal,
                child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpTeal800)),
            Padding(
                padding: EdgeInsets.only(left: 15.h, top: 6.v, bottom: 6.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-170.00", style: theme.textTheme.titleSmall),
                      SizedBox(height: 1.v),
                      Text("12:45 PM, 17 June, 2022",
                          style: theme.textTheme.labelMedium)
                    ])),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
                height: 5.v,
                width: 10.h,
                margin: EdgeInsets.only(top: 23.v, bottom: 22.v))
          ]))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
