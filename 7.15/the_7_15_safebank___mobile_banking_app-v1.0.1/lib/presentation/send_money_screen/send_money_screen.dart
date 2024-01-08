import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_drop_down.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SendMoneyScreen extends StatelessWidget {
  SendMoneyScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFortyFour(context),
                      SizedBox(height: 16.v),
                      _buildMastercard(context),
                      SizedBox(height: 42.v),
                      Text("Enter your account",
                          style: CustomTextStyles.titleMediumGray500),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 41.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1,500.00",
                                    style: theme.textTheme.headlineLarge),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 7.v, bottom: 10.v),
                                    child: CustomDropDown(
                                        width: 70.h,
                                        hintText: "USD",
                                        hintStyle: theme.textTheme.labelLarge!,
                                        items: dropdownItemList,
                                        borderDecoration:
                                            DropDownStyleHelper.outlineGray,
                                        onChanged: (value) {}))
                              ])),
                      SizedBox(height: 43.v),
                      _buildKeyboard(context),
                      SizedBox(height: 3.v)
                    ])),
            bottomNavigationBar: _buildSendMoney(context)));
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
        title: AppbarSubtitle(text: "Send Money"),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgContrastGray300,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse311,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 6.v, bottom: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Alex Dordan", style: theme.textTheme.titleMedium),
                    Text("Web Developer", style: theme.textTheme.labelMedium)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgFloatingIcon,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildMastercard(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                  imagePath: ImageConstant.imgContrastWhiteA700)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 6.v, bottom: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("MasterCard",
                            style: theme.textTheme.titleMedium)),
                    Text("5093 4690 4039 5534",
                        style: theme.textTheme.labelMedium)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkGray100,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(top: 10.v, right: 1.h, bottom: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildKeyboard(BuildContext context) {
    return SizedBox(
        height: 229.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 46.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1", style: theme.textTheme.titleLarge),
                              Text("2", style: theme.textTheme.titleLarge),
                              Text("3", style: theme.textTheme.titleLarge)
                            ])),
                    SizedBox(height: 20.v),
                    Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("4", style: theme.textTheme.titleLarge),
                              Text("5", style: theme.textTheme.titleLarge),
                              Text("6", style: theme.textTheme.titleLarge)
                            ])),
                    SizedBox(height: 23.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h, right: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("7", style: theme.textTheme.titleLarge),
                              Text("8", style: theme.textTheme.titleLarge),
                              Text("9", style: theme.textTheme.titleLarge)
                            ])),
                    SizedBox(height: 23.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("0", style: theme.textTheme.titleLarge),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 10.v,
                                  width: 17.h,
                                  margin: EdgeInsets.only(
                                      left: 94.h, top: 10.v, bottom: 12.v))
                            ]))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 229.v,
              width: 327.h,
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildSendMoney(BuildContext context) {
    return CustomElevatedButton(
        text: "Send Money",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 36.v),
        onPressed: () {
          onTapSendMoney(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the confirmationScreen when the action is triggered.
  onTapSendMoney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmationScreen);
  }
}
