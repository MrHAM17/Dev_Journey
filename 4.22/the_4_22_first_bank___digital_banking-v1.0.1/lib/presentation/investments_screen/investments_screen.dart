import '../investments_screen/widgets/investmentsummary_item_widget.dart';
import '../investments_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/investments_controller.dart';
import 'models/investmentsummary_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class InvestmentsScreen extends GetWidget<InvestmentsController> {
  const InvestmentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      right: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildInvestmentSummary(),
                        SizedBox(height: 27.v),
                        _buildMonthlyRevenue(
                          monthlyRevenue: "msg_yearly_total_investment".tr,
                          price: "lbl_40_000".tr,
                          price1: "lbl_30_000".tr,
                          price2: "lbl_20_000".tr,
                          price3: "lbl_10_000".tr,
                          price4: "lbl_02".tr,
                          image: ImageConstant.imgGroup1045,
                          zipcode2016: "lbl_2016".tr,
                          zipcode2017: "lbl_2017".tr,
                          zipcode2018: "lbl_2018".tr,
                          zipcode2019: "lbl_2019".tr,
                          zipcode2020: "lbl_2020".tr,
                          zipcode2021: "lbl_2021".tr,
                        ),
                        SizedBox(height: 27.v),
                        _buildMonthlyRevenue(
                          monthlyRevenue: "lbl_monthly_revenue".tr,
                          price: "lbl_40_000".tr,
                          price1: "lbl_30_000".tr,
                          price2: "lbl_20_000".tr,
                          price3: "lbl_10_000".tr,
                          price4: "lbl_02".tr,
                          image: ImageConstant.imgGroup1049,
                          zipcode2016: "lbl_2016".tr,
                          zipcode2017: "lbl_2017".tr,
                          zipcode2018: "lbl_2018".tr,
                          zipcode2019: "lbl_2019".tr,
                          zipcode2020: "lbl_2020".tr,
                          zipcode2021: "lbl_2021".tr,
                        ),
                        SizedBox(height: 27.v),
                        _buildMyInvestment(),
                        SizedBox(height: 27.v),
                        _buildTrendingStock(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.white,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_investments".tr,
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgEllipse37,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "msg_search_for_something".tr,
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInvestmentSummary() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller
            .investmentsModelObj.value.investmentsummaryItemList.value.length,
        itemBuilder: (context, index) {
          InvestmentsummaryItemModel model = controller
              .investmentsModelObj.value.investmentsummaryItemList.value[index];
          return InvestmentsummaryItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMyInvestment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_my_investment".tr,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.v),
        Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount: controller
                .investmentsModelObj.value.viewhierarchyItemList.value.length,
            itemBuilder: (context, index) {
              ViewhierarchyItemModel model = controller
                  .investmentsModelObj.value.viewhierarchyItemList.value[index];
              return ViewhierarchyItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTrendingStock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_trending_stock".tr,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 18.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_sl_no".tr,
                          style: TextStyle(
                            color: appTheme.blueGray40001,
                            fontSize: 12.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text(
                            "lbl_name".tr,
                            style: TextStyle(
                              color: appTheme.blueGray40001,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 52,
                        ),
                        Text(
                          "lbl_price".tr,
                          style: TextStyle(
                            color: appTheme.blueGray40001,
                            fontSize: 12.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(
                          flex: 47,
                        ),
                        Text(
                          "lbl_return".tr,
                          style: TextStyle(
                            color: appTheme.blueGray40001,
                            fontSize: 12.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Divider(
                    color: appTheme.gray100,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: _buildFour(
                  four: "lbl_01".tr,
                  nokia: "lbl_trivago".tr,
                  price: "lbl_520".tr,
                  two: "lbl_5".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 26.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_022".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 24,
                    ),
                    Text(
                      "lbl_canon".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 39,
                    ),
                    Text(
                      "lbl_480".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 36,
                    ),
                    Text(
                      "lbl_10".tr,
                      style: TextStyle(
                        color: appTheme.tealA400,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(right: 35.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_03".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 28,
                    ),
                    Text(
                      "lbl_uber_food".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 27,
                    ),
                    Text(
                      "lbl_350".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 43,
                    ),
                    Text(
                      "lbl_32".tr,
                      style: TextStyle(
                        color: appTheme.pinkA200,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: _buildFour(
                  four: "lbl_04".tr,
                  nokia: "lbl_nokia".tr,
                  price: "lbl_940".tr,
                  two: "lbl_22".tr,
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(right: 29.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_05".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 24,
                    ),
                    Text(
                      "lbl_tiktok".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 39,
                    ),
                    Text(
                      "lbl_670".tr,
                      style: TextStyle(
                        color: appTheme.blueGray600,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(
                      flex: 36,
                    ),
                    Text(
                      "lbl_12".tr,
                      style: TextStyle(
                        color: appTheme.pinkA200,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildMonthlyRevenue({
    required String monthlyRevenue,
    required String price,
    required String price1,
    required String price2,
    required String price3,
    required String price4,
    required String image,
    required String zipcode2016,
    required String zipcode2017,
    required String zipcode2018,
    required String zipcode2019,
    required String zipcode2020,
    required String zipcode2021,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          monthlyRevenue,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 20.v,
                ),
                child: Column(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: appTheme.blueGray40001,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      price1,
                      style: TextStyle(
                        color: appTheme.blueGray40001,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      price2,
                      style: TextStyle(
                        color: appTheme.blueGray40001,
                        fontSize: 12.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        price3,
                        style: TextStyle(
                          color: appTheme.blueGray40001,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        price4,
                        style: TextStyle(
                          color: appTheme.blueGray40001,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 13.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: image,
                        height: 157.v,
                        width: 232.h,
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              zipcode2016,
                              style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              zipcode2017,
                              style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              zipcode2018,
                              style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              zipcode2019,
                              style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              zipcode2020,
                              style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              zipcode2021,
                              style: TextStyle(
                                color: appTheme.blueGray40001,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFour({
    required String four,
    required String nokia,
    required String price,
    required String two,
  }) {
    return Row(
      children: [
        Text(
          four,
          style: TextStyle(
            color: appTheme.blueGray600,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Text(
          nokia,
          style: TextStyle(
            color: appTheme.blueGray600,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(
          flex: 41,
        ),
        Text(
          price,
          style: TextStyle(
            color: appTheme.blueGray600,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(
          flex: 35,
        ),
        Text(
          two,
          style: TextStyle(
            color: appTheme.tealA400,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
