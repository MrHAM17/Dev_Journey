import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_drop_down.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_outlined_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CurrencyExchangeScreen extends StatelessWidget {
  CurrencyExchangeScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController priceController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
                child: Column(children: [
                  _buildMastercard(context),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.only(left: 129.h),
                      child: CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(16.h),
                          decoration: IconButtonStyleHelper.fillIndigo,
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgShare))),
                  SizedBox(height: 24.v),
                  _buildVisa(context),
                  SizedBox(height: 24.v),
                  _buildComment(context)
                ])),
            bottomNavigationBar: _buildTransferMoney(context)));
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
        title: AppbarSubtitle(text: "Currency Exchange"),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgContrastGray300,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildMastercard(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapMastercard(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 30.v),
            decoration: AppDecoration.outlineBlack900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgContrastRed700,
                            height: 23.v,
                            width: 36.h),
                        CustomImageView(
                            imagePath: ImageConstant.img1Gray700,
                            height: 4.v,
                            width: 32.h,
                            margin: EdgeInsets.only(
                                left: 19.h, top: 10.v, bottom: 9.v)),
                        CustomImageView(
                            imagePath: ImageConstant.img1Gray700,
                            height: 4.v,
                            width: 32.h,
                            margin: EdgeInsets.only(
                                left: 10.h, top: 10.v, bottom: 9.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.h, top: 3.v, bottom: 4.v),
                            child: Text("4023",
                                style: CustomTextStyles.labelMediumGray700)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 3.v, bottom: 4.v),
                            child: Text("5534",
                                style: CustomTextStyles.labelMediumGray700)),
                        Spacer(),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowDownOnprimarycontainer,
                            height: 4.v,
                            width: 8.h,
                            margin: EdgeInsets.only(top: 10.v, bottom: 9.v))
                      ])),
              SizedBox(height: 21.v),
              Divider(),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlinedButton(width: 140.h, text: "1,200.00"),
                        CustomDropDown(
                            width: 70.h,
                            hintText: "USD",
                            hintStyle: theme.textTheme.titleSmall!,
                            items: dropdownItemList,
                            onChanged: (value) {})
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildVisa(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapVisa(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 30.v),
            decoration: AppDecoration.outlineBlack900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 15.v,
                        width: 47.h),
                    CustomImageView(
                        imagePath: ImageConstant.img1Gray500,
                        height: 4.v,
                        width: 32.h,
                        margin:
                            EdgeInsets.only(left: 20.h, top: 6.v, bottom: 5.v)),
                    CustomImageView(
                        imagePath: ImageConstant.img1Gray500,
                        height: 4.v,
                        width: 32.h,
                        margin:
                            EdgeInsets.only(left: 10.h, top: 6.v, bottom: 5.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("4023",
                            style: CustomTextStyles.labelMediumGray700)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("5534",
                            style: CustomTextStyles.labelMediumGray700)),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
                        height: 4.v,
                        width: 8.h,
                        margin: EdgeInsets.only(top: 6.v, bottom: 5.v))
                  ]),
                  SizedBox(height: 25.v),
                  Divider(),
                  SizedBox(height: 19.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextFormField(
                            width: 140.h,
                            controller: priceController,
                            hintText: "1,500.00",
                            hintStyle: theme.textTheme.labelLarge!,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 6.v)),
                        CustomDropDown(
                            width: 70.h,
                            hintText: "USD",
                            hintStyle: theme.textTheme.titleSmall!,
                            items: dropdownItemList1,
                            onChanged: (value) {})
                      ])
                ])));
  }

  /// Section Widget
  Widget _buildComment(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Comment", style: theme.textTheme.titleMedium),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: commentController,
          hintText: "Enter your comment...",
          textInputAction: TextInputAction.done,
          maxLines: 6,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v))
    ]);
  }

  /// Section Widget
  Widget _buildTransferMoney(BuildContext context) {
    return CustomElevatedButton(
        text: "Transfer Money",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 34.v),
        onPressed: () {
          onTapTransferMoney(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapMastercard(BuildContext context) {
    // TODO: implement Actions
  }

  onTapVisa(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the transferAmountScreen when the action is triggered.
  onTapTransferMoney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transferAmountScreen);
  }
}
