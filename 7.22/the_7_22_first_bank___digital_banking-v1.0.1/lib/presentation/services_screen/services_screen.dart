import '../services_screen/widgets/lifeinsurancefilled_item_widget.dart';
import '../services_screen/widgets/loanone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_search_view.dart';

class ServicesScreen extends StatelessWidget {
  ServicesScreen({Key? key})
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLifeInsuranceFilled(context),
                        SizedBox(height: 22.v),
                        Text(
                          "Bank Services List",
                          style: CustomTextStyles.titleMediumBluegray800,
                        ),
                        SizedBox(height: 12.v),
                        _buildLoanOne(context),
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
              text: "Services",
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
  Widget _buildLifeInsuranceFilled(BuildContext context) {
    return SizedBox(
      height: 85.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return LifeinsurancefilledItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: ListView.separated(
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
        itemCount: 6,
        itemBuilder: (context, index) {
          return LoanoneItemWidget();
        },
      ),
    );
  }
}
