import '../country_or_region_screen/widgets/countryorregion_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class CountryOrRegionScreen extends StatelessWidget {
  CountryOrRegionScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController,
                      hintText: "Search Country..."),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Country or Region",
                          style: CustomTextStyles.titleMediumSemiBold18)),
                  SizedBox(height: 14.v),
                  _buildCountryOrRegion(context)
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
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildCountryOrRegion(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return CountryorregionItemWidget(onTapCountrySelection: () {
            onTapCountrySelection(context);
          });
        });
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapCountrySelection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.minePageContainerScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
