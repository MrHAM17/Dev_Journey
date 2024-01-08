import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/finddoctors_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_06__helthio___telehealth/core/app_export.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_06__helthio___telehealth/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class FindDoctorsScreen extends StatelessWidget {
  FindDoctorsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 23.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSearchView(
                          controller: searchController,
                          hintText: "Find a doctor"),
                      SizedBox(height: 28.v),
                      _buildCategories(context),
                      SizedBox(height: 24.v),
                      _buildRecommendedDoctors(context),
                      SizedBox(height: 3.v)
                    ])),
            bottomNavigationBar: _buildYourRecentDoctors(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Find Doctors"));
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Category", style: CustomTextStyles.titleMedium18),
          SizedBox(height: 16.v),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 83.v,
                  crossAxisCount: 4,
                  mainAxisSpacing: 22.h,
                  crossAxisSpacing: 22.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                return FinddoctorsItemWidget();
              })
        ]));
  }

  /// Section Widget
  Widget _buildRecommendedDoctors(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Recommended Doctors", style: CustomTextStyles.titleMedium18),
          SizedBox(height: 11.v),
          GestureDetector(
              onTap: () {
                onTapDr(context);
              },
              child: Container(
                  margin: EdgeInsets.only(right: 2.h),
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  decoration: AppDecoration.outlineGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse8888x88,
                            height: 88.adaptSize,
                            width: 88.adaptSize,
                            radius: BorderRadius.circular(44.h),
                            margin: EdgeInsets.only(bottom: 12.v)),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v, bottom: 7.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dr. Marcus Horizon",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 9.v),
                                  Text("Chardiologist",
                                      style:
                                          CustomTextStyles.bodyMediumGray500),
                                  SizedBox(height: 4.v),
                                  SizedBox(width: 167.h, child: Divider()),
                                  SizedBox(height: 22.v),
                                  Container(
                                      width: 157.h,
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                                width: 36.h,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgSignal,
                                                          height: 16.adaptSize,
                                                          width: 16.adaptSize),
                                                      Text("4.7",
                                                          style: CustomTextStyles
                                                              .labelLargeAmber500)
                                                    ])),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLinkedinErrorcontainer,
                                                      height: 16.adaptSize,
                                                      width: 16.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          bottom: 1.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h),
                                                      child: Text("800m away",
                                                          style: CustomTextStyles
                                                              .titleSmallErrorContainer))
                                                ])
                                          ]))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildYourRecentDoctors(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 68.v),
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Recent Doctors",
                  style: CustomTextStyles.titleMedium18),
              SizedBox(
                  height: 107.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(top: 18.v),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 24.h);
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return DoctorsItemWidget();
                      }))
            ]));
  }

  /// Navigates to the doctorDetailScreen when the action is triggered.
  onTapDr(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.doctorDetailScreen);
  }
}
