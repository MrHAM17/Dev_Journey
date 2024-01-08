import '../loans_screen/widgets/loans_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_outlined_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_search_view.dart';

class LoansScreen extends StatelessWidget {
  LoansScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildLoans(context),
                        SizedBox(height: 25.v),
                        _buildActiveLoansOverview(context),
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
  Widget _buildHeader(BuildContext context) {
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
              text: "Loans",
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
              controller: searchController,
              hintText: "Search for something",
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoans(BuildContext context) {
    return SizedBox(
      height: 85.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 24.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return LoansItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActiveLoansOverview(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Active Loans Overview",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 14.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 34.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loan Money",
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                      Text(
                        "Left to repay",
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                      Text(
                        "Repay",
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "100,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "40,500",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "500,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "250,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "900,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 45,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "40,500",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 54,
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "50,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "40,500",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "50,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "40,500",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "80,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "25,500",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "12,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "5,500",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "160,000",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "100,800",
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 70.h,
                    text: "Repay",
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total",
                          style: CustomTextStyles.labelLargeRed700,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "125,0000",
                          style: CustomTextStyles.labelLargeRed700,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 43.h,
                        top: 20.v,
                      ),
                      child: Text(
                        "750,000",
                        style: CustomTextStyles.labelLargeRed700,
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
}
