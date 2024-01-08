import 'controller/transfer_amount_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';

class TransferAmountScreen extends GetWidget<TransferAmountController> {
  const TransferAmountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 23.v),
                  _buildFiftyThree(),
                  Spacer()
                ])),
            bottomNavigationBar: _buildSendMoney()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_transfer_amount".tr));
  }

  /// Section Widget
  Widget _buildFiftyThree() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 26.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 10.v, bottom: 11.v),
                    child:
                        Text("lbl_to".tr, style: theme.textTheme.labelLarge)),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse31140x40,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(20.h),
                    margin: EdgeInsets.only(left: 14.h)),
                Padding(
                    padding: EdgeInsets.only(left: 14.h, bottom: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_marlee_rice".tr,
                              style: theme.textTheme.titleSmall),
                          Text("lbl_id_14345112075".tr,
                              style: theme.textTheme.labelMedium)
                        ]))
              ]),
              SizedBox(height: 23.v),
              Divider(color: appTheme.gray200),
              SizedBox(height: 13.v),
              Text("lbl_amount".tr, style: theme.textTheme.labelLarge),
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.center,
                  child:
                      Text("lbl_02".tr, style: theme.textTheme.headlineLarge)),
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_available_balance2".tr,
                            style: theme.textTheme.labelMedium),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "lbl_3_230_00".tr,
                            style: CustomTextStyles.labelMediumPrimary)
                      ]),
                      textAlign: TextAlign.left))
            ]));
  }

  /// Section Widget
  Widget _buildSendMoney() {
    return CustomElevatedButton(
        text: "lbl_send_money".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 34.v),
        onPressed: () {
          onTapSendMoney();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the confirmationScreen when the action is triggered.
  onTapSendMoney() {
    Get.toNamed(
      AppRoutes.confirmationScreen,
    );
  }
}
