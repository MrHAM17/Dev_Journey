import '../accounts_screen/widgets/balancecomponent_item_widget.dart';
import 'controller/accounts_controller.dart';
import 'models/balancecomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_search_view.dart';

class AccountsScreen extends GetWidget<AccountsController> {
  const AccountsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(),
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildBalanceComponent(),
                                SizedBox(height: 25.v),
                                _buildLastTransaction(),
                                SizedBox(height: 27.v),
                                _buildMyCard(),
                                SizedBox(height: 25.v),
                                _buildDebitCreditOverview(),
                                SizedBox(height: 25.v),
                                _buildInvoicesSent()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.white,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: 48.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(left: 24.h, top: 5.v, bottom: 6.v)),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_accounts".tr),
              actions: [
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgEllipse37,
                    margin: EdgeInsets.symmetric(horizontal: 24.h))
              ]),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_search_for_something".tr)),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildBalanceComponent() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 86.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .accountsModelObj.value.balancecomponentItemList.value.length,
        itemBuilder: (context, index) {
          BalancecomponentItemModel model = controller
              .accountsModelObj.value.balancecomponentItemList.value[index];
          return BalancecomponentItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildLastTransaction() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_last_transaction".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 14.v),
      Container(
          margin: EdgeInsets.only(right: 2.h),
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgRenew1)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_spotify_subscription".tr,
                            style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 3.v),
                        Text("lbl_25_jan_2021".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: Text("lbl_150".tr,
                      style: TextStyle(
                          color: appTheme.red700,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)))
            ]),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsPrimary)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_mobile_service".tr,
                            style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 4.v),
                        Text("lbl_25_jan_2021".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: Text("lbl_340".tr,
                      style: TextStyle(
                          color: appTheme.red700,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)))
            ]),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUser21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_emilly_wilson".tr,
                            style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 3.v),
                        Text("lbl_25_jan_2021".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: Text("lbl_780".tr,
                      style: TextStyle(
                          color: appTheme.green600,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)))
            ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildMyCard() {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("lbl_my_card".tr,
            style: TextStyle(
                color: appTheme.blueGray900,
                fontSize: 16.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
        GestureDetector(
            onTap: () {
              onTapTxtSeeAll();
            },
            child: Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text("lbl_see_all".tr,
                    style: TextStyle(
                        color: appTheme.blueGray900,
                        fontSize: 14.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600))))
      ]),
      SizedBox(height: 12.v),
      Container(
          decoration: AppDecoration.fillPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 51.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_balance".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        fontSize: 10.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 3.v),
                                Text("lbl_5_756".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        fontSize: 16.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600))
                              ]),
                          CustomImageView(
                              imagePath: ImageConstant.imgChipCard,
                              height: 29.adaptSize,
                              width: 29.adaptSize,
                              margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                        ])),
                SizedBox(height: 17.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_card_holder".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        fontSize: 10.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 1.v),
                                Text("lbl_eddy_cusuma".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        fontSize: 14.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600))
                              ]),
                          Padding(
                              padding: EdgeInsets.only(left: 41.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_valid_thru".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            fontSize: 10.fSize,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 1.v),
                                    Text("lbl_12_22".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            fontSize: 14.fSize,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600))
                                  ]))
                        ]))),
                SizedBox(height: 11.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
                    decoration: AppDecoration.gradientOnPrimaryToOnPrimary
                        .copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text("msg_3778_1234".tr,
                                  style: TextStyle(
                                      color: theme.colorScheme.onPrimary
                                          .withOpacity(1),
                                      fontSize: 14.fSize,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500))),
                          CustomImageView(
                              imagePath: ImageConstant.imgUserOnprimary,
                              height: 18.v,
                              width: 27.h)
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildDebitCreditOverview() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_debit_credit_overview".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 14.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(4.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_debit".tr,
                                      style: TextStyle(
                                          color: appTheme.blueGray40001,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400))),
                              Container(
                                  width: 57.h,
                                  margin: EdgeInsets.only(left: 20.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 2.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.indigo300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        4.h))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("lbl_credit".tr,
                                                style: TextStyle(
                                                    color:
                                                        appTheme.blueGray40001,
                                                    fontSize: 12.fSize,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w400)))
                                      ]))
                            ]))),
                SizedBox(height: 15.v),
                Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27Primary,
                                  height: 153.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27Primary,
                                  height: 120.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 33.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 75.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 78.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27Primary,
                                  height: 129.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 24.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27Primary,
                                  height: 136.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 17.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 96.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                      left: 9.h, top: 57.v, right: 9.h))),
                          Expanded(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27Primary,
                                  height: 143.v,
                                  width: 25.h,
                                  margin:
                                      EdgeInsets.only(left: 9.h, top: 10.v)))
                        ])),
                SizedBox(height: 11.v),
                Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 7.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_sat".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_sun".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_mon".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_tue".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_wed".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_thu".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_fri".tr,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400))
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildInvoicesSent() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_invoices_sent".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 13.v),
      Container(
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgApple21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_apple_store".tr,
                            style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 2.v),
                        Text("lbl_5h_ago".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_450".tr,
                      style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 14.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)))
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUser21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_michael".tr,
                            style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 4.v),
                        Text("lbl_2_days_ago".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_160".tr,
                      style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 14.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)))
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPlaystation1)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_playstation".tr,
                            style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 2.v),
                        Text("lbl_5_days_ago".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_1085".tr,
                      style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 14.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)))
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUser21)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_william".tr,
                            style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 4.v),
                        Text("lbl_10_days_ago".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
                  child: Text("lbl_90".tr,
                      style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 14.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)))
            ])
          ]))
    ]);
  }

  /// Navigates to the creditCardsScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}
