import '../home_screen/widgets/balance_item_widget.dart';
import '../home_screen/widgets/liviabator_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
                  _buildHeader(context),
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildMyCards(context),
                                SizedBox(height: 12.v),
                                _buildBalance(context),
                                SizedBox(height: 25.v),
                                _buildRecentTransaction(context),
                                SizedBox(height: 27.v),
                                _buildWeeklyActivity(context),
                                SizedBox(height: 27.v),
                                _buildExpenseStatistics(context),
                                SizedBox(height: 26.v),
                                _buildQuickTransfer(context),
                                SizedBox(height: 27.v),
                                _buildBalanceHistory(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
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
                    onTapMegaphone(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Overview"),
              actions: [
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgEllipse37,
                    margin: EdgeInsets.symmetric(horizontal: 24.h))
              ]),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search for something")),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildMyCards(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Cards", style: theme.textTheme.titleMedium),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSeeAll(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text("See All",
                              style: CustomTextStyles.titleSmallSemiBold)))
                ])));
  }

  /// Section Widget
  Widget _buildBalance(BuildContext context) {
    return SizedBox(
        height: 170.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return BalanceItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildRecentTransaction(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Recent Transaction", style: theme.textTheme.titleMedium),
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
                        Text("Deposit from my",
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 6.v),
                        Text("28 January 2021",
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Text("-850", style: CustomTextStyles.labelLargeRed700))
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
                        Text("Deposit Paypal",
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 6.v),
                        Text("25 January 2021",
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Text("+2,500",
                      style: CustomTextStyles.labelLargeGreen600))
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
                        Text("Jemi Wilson", style: theme.textTheme.titleSmall),
                        SizedBox(height: 8.v),
                        Text("21 January 2021",
                            style: theme.textTheme.bodySmall)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Text("+5,400",
                      style: CustomTextStyles.labelLargeGreen600))
            ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildWeeklyActivity(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Weekly Activity", style: theme.textTheme.titleMedium),
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
                                  child: Text("Diposit",
                                      style: theme.textTheme.bodySmall)),
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
                                  child: Text("Withdraw",
                                      style: theme.textTheme.bodySmall))
                            ]))),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 24.v),
                          child: Column(children: [
                            Text("500", style: theme.textTheme.bodySmall),
                            SizedBox(height: 18.v),
                            Text("400", style: theme.textTheme.bodySmall),
                            SizedBox(height: 17.v),
                            Text("300", style: theme.textTheme.bodySmall),
                            SizedBox(height: 18.v),
                            Text("200", style: theme.textTheme.bodySmall),
                            SizedBox(height: 18.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("100",
                                    style: theme.textTheme.bodySmall)),
                            SizedBox(height: 18.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text("0",
                                        style: theme.textTheme.bodySmall)))
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
                                                        _buildFri(context,
                                                            fri: "Sat"),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 47.v),
                                                            child: _buildThu(
                                                                context,
                                                                thu: "Sun")),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 47.v),
                                                            child: Column(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup27,
                                                                      height:
                                                                          112.v,
                                                                      width:
                                                                          19.h),
                                                                  SizedBox(
                                                                      height:
                                                                          14.v),
                                                                  Text("Mon",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall)
                                                                ])),
                                                        Column(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGroup27,
                                                              height: 161.v,
                                                              width: 19.h),
                                                          SizedBox(
                                                              height: 14.v),
                                                          Text("Tue",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
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
                                                                              .imgSettings,
                                                                      height:
                                                                          77.v,
                                                                      width:
                                                                          19.h),
                                                                  SizedBox(
                                                                      height:
                                                                          14.v),
                                                                  Text("Wed",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 26.v),
                                                            child: _buildThu(
                                                                context,
                                                                thu: "Thu")),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 30.v),
                                                            child: _buildFri(
                                                                context,
                                                                fri: "Fri"))
                                                      ])))
                                        ]))
                              ])))
                    ])
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildExpenseStatistics(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Expense Statistics", style: theme.textTheme.titleMedium),
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
                              child: Text("30%\nEntertainment",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .labelLargeOnPrimaryBold
                                      .copyWith(height: 1.50)))
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
                                  child: Text("20%\nInvestment",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryBold
                                          .copyWith(height: 1.50)))
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
                                  child: Text("35%\nOthers",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryBold
                                          .copyWith(height: 1.50)))
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
                                  child: Text("15%\nBill Expense",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryBold
                                          .copyWith(height: 1.50)))
                            ])))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildQuickTransfer(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Quick Transfer", style: theme.textTheme.titleMedium),
      SizedBox(height: 13.v),
      Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
                height: 92.v,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 21.h);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return LiviabatorItemWidget();
                    })),
            SizedBox(height: 22.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  child:
                      Text("Write Amount", style: theme.textTheme.bodySmall)),
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
                            child: Text("525.50",
                                style: CustomTextStyles.labelLargeBold)),
                        CustomElevatedButton(
                            height: 40.v,
                            width: 100.h,
                            text: "Send",
                            rightIcon: Container(
                                margin: EdgeInsets.only(left: 10.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSave,
                                    height: 14.v,
                                    width: 16.h)),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeOnPrimary)
                      ]))
            ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildBalanceHistory(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Balance History", style: theme.textTheme.titleMedium),
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
                                Text("800", style: theme.textTheme.bodySmall),
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
                                Text("600", style: theme.textTheme.bodySmall),
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
                                Text("400", style: theme.textTheme.bodySmall),
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
                                Text("200", style: theme.textTheme.bodySmall),
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
                                    Text("0", style: theme.textTheme.bodySmall),
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
                                              Text("Jul",
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ]),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child:
                                                _buildNov(context, nov: "Aug")),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child:
                                                _buildDec(context, dec: "Sep")),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child:
                                                _buildJan(context, jan: "Oct")),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: _buildNov(context,
                                                nov: "Nov ")),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child:
                                                _buildDec(context, dec: "Dec")),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child:
                                                _buildJan(context, jan: "Jan"))
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
  Widget _buildThu(
    BuildContext context, {
    required String thu,
  }) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroup27, height: 135.v, width: 19.h),
      SizedBox(height: 14.v),
      Text(thu,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001))
    ]);
  }

  /// Common widget
  Widget _buildFri(
    BuildContext context, {
    required String fri,
  }) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroup27, height: 131.v, width: 19.h),
      SizedBox(height: 14.v),
      Text(fri,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001))
    ]);
  }

  /// Common widget
  Widget _buildNov(
    BuildContext context, {
    required String nov,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroupBlueGray40001,
          height: 4.v,
          width: 1.h,
          margin: EdgeInsets.only(left: 11.h)),
      SizedBox(height: 4.v),
      Text(nov,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001))
    ]);
  }

  /// Common widget
  Widget _buildDec(
    BuildContext context, {
    required String dec,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroupBlueGray40001,
          height: 4.v,
          width: 1.h,
          margin: EdgeInsets.only(left: 10.h)),
      SizedBox(height: 5.v),
      Text(dec,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001))
    ]);
  }

  /// Common widget
  Widget _buildJan(
    BuildContext context, {
    required String jan,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroupBlueGray40001,
          height: 4.v,
          width: 1.h,
          margin: EdgeInsets.only(left: 10.h)),
      SizedBox(height: 4.v),
      Text(jan,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001))
    ]);
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  onTapMegaphone(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Navigates to the creditCardsScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardsScreen);
  }
}
