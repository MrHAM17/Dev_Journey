import '../home_screen/widgets/cardcomponent_item_widget.dart';
import '../home_screen/widgets/randypress_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/cardcomponent_item_model.dart';
import 'models/randypress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(),
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildMyCards(),
                                SizedBox(height: 12.v),
                                _buildCardComponent(),
                                SizedBox(height: 25.v),
                                _buildRecentTransaction(),
                                SizedBox(height: 27.v),
                                _buildWeeklyActivity(),
                                SizedBox(height: 27.v),
                                _buildExpenseStatistics(),
                                SizedBox(height: 26.v),
                                _buildQuickTransfer(),
                                SizedBox(height: 27.v),
                                _buildBalanceHistory()
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
                  margin: EdgeInsets.only(left: 24.h, top: 5.v, bottom: 6.v),
                  onTap: () {
                    onTapMegaphone();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_overview".tr),
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
  Widget _buildMyCards() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_my_cards".tr,
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
                ])));
  }

  /// Section Widget
  Widget _buildCardComponent() {
    return SizedBox(
        height: 170.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: controller
                .homeModelObj.value.cardcomponentItemList.value.length,
            itemBuilder: (context, index) {
              CardcomponentItemModel model = controller
                  .homeModelObj.value.cardcomponentItemList.value[index];
              return CardcomponentItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildRecentTransaction() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_recent_transaction".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 14.v),
      Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconfinderBusi)),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 6.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_deposit_from_my".tr,
                            style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 6.v),
                        Text("lbl_28_january_2021".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Text("lbl_850".tr,
                      style: TextStyle(
                          color: appTheme.red700,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)))
            ]),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconfinderPayp)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_deposit_paypal".tr,
                            style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 6.v),
                        Text("lbl_25_january_2021".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Text("lbl_2_500".tr,
                      style: TextStyle(
                          color: appTheme.green600,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)))
            ]),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconfinder64753731)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_jemi_wilson".tr,
                            style: TextStyle(
                                color: appTheme.blueGray900,
                                fontSize: 14.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 8.v),
                        Text("lbl_21_january_2021".tr,
                            style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400))
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Text("lbl_5_400".tr,
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
  Widget _buildWeeklyActivity() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_weekly_activity".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 12.v),
      Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(bottom: 3.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo300,
                                      borderRadius:
                                          BorderRadius.circular(6.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_diposit".tr,
                                      style: TextStyle(
                                          color: appTheme.blueGray40001,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400))),
                              Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 28.h, bottom: 3.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(6.h))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.h, bottom: 1.v),
                                  child: Text("lbl_withdraw".tr,
                                      style: TextStyle(
                                          color: appTheme.blueGray40001,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400)))
                            ]))),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 24.v),
                          child: Column(children: [
                            Text("lbl_500".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray40001,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 18.v),
                            Text("lbl_400".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray40001,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 17.v),
                            Text("lbl_300".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray40001,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 18.v),
                            Text("lbl_200".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray40001,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 18.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_100".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray40001,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))),
                            SizedBox(height: 18.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text("lbl_0".tr,
                                        style: TextStyle(
                                            color: appTheme.blueGray40001,
                                            fontSize: 12.fSize,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400))))
                          ])),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.h, top: 9.v),
                              child: Column(children: [
                                Container(
                                    height: 1.v,
                                    width: 259.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.indigo50)),
                                SizedBox(height: 3.v),
                                SizedBox(
                                    height: 190.v,
                                    width: 259.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                        height: 1.v,
                                                        width: 259.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .indigo50)),
                                                    SizedBox(height: 32.v),
                                                    Container(
                                                        height: 1.v,
                                                        width: 259.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .indigo50)),
                                                    SizedBox(height: 32.v),
                                                    Container(
                                                        height: 1.v,
                                                        width: 259.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .indigo50)),
                                                    SizedBox(height: 32.v),
                                                    Container(
                                                        height: 1.v,
                                                        width: 259.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .indigo50)),
                                                    SizedBox(height: 32.v),
                                                    Container(
                                                        height: 1.v,
                                                        width: 259.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .indigo50))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: 250.h,
                                                  margin: EdgeInsets.only(
                                                      left: 4.h, right: 5.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        _buildFri(
                                                            dayOfWeek:
                                                                "lbl_sat".tr),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 47.v),
                                                            child: _buildThu(
                                                                userName:
                                                                    "lbl_sun"
                                                                        .tr)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 47.v),
                                                            child: Column(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup27Primary,
                                                                      height:
                                                                          112.v,
                                                                      width:
                                                                          19.h),
                                                                  SizedBox(
                                                                      height:
                                                                          14.v),
                                                                  Text(
                                                                      "lbl_mon"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: appTheme
                                                                              .blueGray40001,
                                                                          fontSize: 12
                                                                              .fSize,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w400))
                                                                ])),
                                                        Column(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGroup27Primary,
                                                              height: 161.v,
                                                              width: 19.h),
                                                          SizedBox(
                                                              height: 14.v),
                                                          Text("lbl_tue".tr,
                                                              style: TextStyle(
                                                                  color: appTheme
                                                                      .blueGray40001,
                                                                  fontSize:
                                                                      12.fSize,
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400))
                                                        ]),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 84.v),
                                                            child: Column(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup27,
                                                                      height:
                                                                          77.v,
                                                                      width:
                                                                          19.h),
                                                                  SizedBox(
                                                                      height:
                                                                          14.v),
                                                                  Text(
                                                                      "lbl_wed"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: appTheme
                                                                              .blueGray40001,
                                                                          fontSize: 12
                                                                              .fSize,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w400))
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 26.v),
                                                            child: _buildThu(
                                                                userName:
                                                                    "lbl_thu"
                                                                        .tr)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 30.v),
                                                            child: _buildFri(
                                                                dayOfWeek:
                                                                    "lbl_fri"
                                                                        .tr))
                                                      ])))
                                        ]))
                              ])))
                    ])
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildExpenseStatistics() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_expense_statistics".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 12.v),
      Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          color: theme.colorScheme.onPrimary.withOpacity(1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Container(
              height: 240.v,
              width: 327.h,
              padding: EdgeInsets.symmetric(horizontal: 62.h, vertical: 22.v),
              decoration: AppDecoration.white
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: EdgeInsets.only(left: 15.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 27.h, vertical: 18.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup9322),
                                fit: BoxFit.cover)),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 23.v),
                          SizedBox(
                              width: 84.h,
                              child: Text("msg_30_entertainment".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: theme.colorScheme.onPrimary
                                          .withOpacity(1),
                                      fontSize: 12.fSize,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700)))
                        ]))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 9.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.h, vertical: 48.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup9321),
                                fit: BoxFit.cover)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 9.v),
                              SizedBox(
                                  width: 66.h,
                                  child: Text("lbl_20_investment".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          fontSize: 12.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700)))
                            ]))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        margin: EdgeInsets.only(right: 25.h, bottom: 1.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 17.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup9320),
                                fit: BoxFit.cover)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 19.v),
                              SizedBox(
                                  width: 41.h,
                                  child: Text("lbl_35_others".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          fontSize: 12.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700)))
                            ]))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: EdgeInsets.only(top: 21.v, right: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 1.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup9319),
                                fit: BoxFit.cover)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 38.v),
                              SizedBox(
                                  width: 71.h,
                                  child: Text("msg_15_bill_expense".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          fontSize: 12.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700)))
                            ])))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildQuickTransfer() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_quick_transfer".tr,
          style: TextStyle(
              color: appTheme.blueGray900,
              fontSize: 16.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 13.v),
      Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
                height: 92.v,
                child: Obx(() => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 21.h);
                    },
                    itemCount: controller
                        .homeModelObj.value.randypressItemList.value.length,
                    itemBuilder: (context, index) {
                      RandypressItemModel model = controller
                          .homeModelObj.value.randypressItemList.value[index];
                      return RandypressItemWidget(model);
                    }))),
            SizedBox(height: 22.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  child: Text("lbl_write_amount".tr,
                      style: TextStyle(
                          color: appTheme.blueGray40001,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400))),
              Container(
                  width: 187.h,
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 15.h, top: 12.v, bottom: 12.v),
                            child: Text("lbl_525_50".tr,
                                style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700))),
                        CustomElevatedButton(
                            height: 40.v,
                            width: 100.h,
                            text: "lbl_send".tr,
                            rightIcon: Container(
                                margin: EdgeInsets.only(left: 10.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSave,
                                    height: 14.v,
                                    width: 16.h)),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20)
                      ]))
            ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildBalanceHistory() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_balance_history".tr,
              style: TextStyle(
                  color: appTheme.blueGray900,
                  fontSize: 16.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 12.v),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: theme.colorScheme.onPrimary.withOpacity(1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder17),
              child: Container(
                  height: 223.v,
                  width: 325.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v),
                  decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_800".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray40001,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                Container(
                                    height: 1.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                        left: 4.h, top: 8.v, bottom: 5.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray40001))
                              ]),
                          SizedBox(height: 25.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_600".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray40001,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                Container(
                                    height: 1.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                        left: 4.h, top: 8.v, bottom: 5.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray40001))
                              ]),
                          SizedBox(height: 25.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_400".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray40001,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                Container(
                                    height: 1.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                        left: 4.h, top: 8.v, bottom: 5.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray40001))
                              ]),
                          SizedBox(height: 25.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_200".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray40001,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                Container(
                                    height: 1.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                        left: 4.h, top: 7.v, bottom: 6.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray40001))
                              ]),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("lbl_0".tr,
                                        style: TextStyle(
                                            color: appTheme.blueGray40001,
                                            fontSize: 12.fSize,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    Container(
                                        height: 1.v,
                                        width: 6.h,
                                        margin: EdgeInsets.only(
                                            left: 4.h, top: 7.v, bottom: 6.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray40001))
                                  ]))
                        ])),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            height: 185.v,
                            width: 263.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGroupBlueGray40001,
                                                  height: 4.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h)),
                                              SizedBox(height: 4.v),
                                              Text("lbl_jul".tr,
                                                  style: TextStyle(
                                                      color: appTheme
                                                          .blueGray40001,
                                                      fontSize: 12.fSize,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: _buildNov(
                                                novText: "lbl_aug".tr)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: _buildDec(
                                                decText: "lbl_sep".tr)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: _buildJan(
                                                userName: "lbl_oct".tr)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: _buildNov(
                                                novText: "lbl_nov".tr)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child: _buildDec(
                                                decText: "lbl_dec".tr)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: _buildJan(
                                                userName: "lbl_jan".tr))
                                      ])),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup1032,
                                      height: 161.v,
                                      width: 255.h,
                                      alignment: Alignment.topCenter)
                                ])))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildThu({required String userName}) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroup27Primary,
          height: 135.v,
          width: 19.h),
      SizedBox(height: 14.v),
      Text(userName,
          style: TextStyle(
              color: appTheme.blueGray40001,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400))
    ]);
  }

  /// Common widget
  Widget _buildFri({required String dayOfWeek}) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroup27Primary,
          height: 131.v,
          width: 19.h),
      SizedBox(height: 14.v),
      Text(dayOfWeek,
          style: TextStyle(
              color: appTheme.blueGray40001,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400))
    ]);
  }

  /// Common widget
  Widget _buildNov({required String novText}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroupBlueGray40001,
          height: 4.v,
          width: 1.h,
          margin: EdgeInsets.only(left: 11.h)),
      SizedBox(height: 4.v),
      Text(novText,
          style: TextStyle(
              color: appTheme.blueGray40001,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400))
    ]);
  }

  /// Common widget
  Widget _buildDec({required String decText}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroupBlueGray40001,
          height: 4.v,
          width: 1.h,
          margin: EdgeInsets.only(left: 10.h)),
      SizedBox(height: 5.v),
      Text(decText,
          style: TextStyle(
              color: appTheme.blueGray40001,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400))
    ]);
  }

  /// Common widget
  Widget _buildJan({required String userName}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroupBlueGray40001,
          height: 4.v,
          width: 1.h,
          margin: EdgeInsets.only(left: 10.h)),
      SizedBox(height: 4.v),
      Text(userName,
          style: TextStyle(
              color: appTheme.blueGray40001,
              fontSize: 12.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400))
    ]);
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  onTapMegaphone() {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Navigates to the creditCardsScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}
