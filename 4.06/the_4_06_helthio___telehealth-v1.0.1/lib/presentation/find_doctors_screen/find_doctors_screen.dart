import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/finddoctors_item_widget.dart';
import 'controller/find_doctors_controller.dart';
import 'models/doctors_item_model.dart';
import 'models/finddoctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_06_helthio___telehealth/widgets/custom_search_view.dart';

class FindDoctorsScreen extends GetWidget<FindDoctorsController> {
  const FindDoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 23.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_find_a_doctor".tr),
                      SizedBox(height: 28.v),
                      _buildCategories(),
                      SizedBox(height: 24.v),
                      _buildRecommendedDoctors(),
                      SizedBox(height: 3.v)
                    ])),
            bottomNavigationBar: _buildYourRecentDoctors()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_find_doctors".tr));
  }

  /// Section Widget
  Widget _buildCategories() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_category".tr, style: CustomTextStyles.titleMedium18),
          SizedBox(height: 16.v),
          Obx(() => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 83.v,
                  crossAxisCount: 4,
                  mainAxisSpacing: 22.h,
                  crossAxisSpacing: 22.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller
                  .findDoctorsModelObj.value.finddoctorsItemList.value.length,
              itemBuilder: (context, index) {
                FinddoctorsItemModel model = controller
                    .findDoctorsModelObj.value.finddoctorsItemList.value[index];
                return FinddoctorsItemWidget(model);
              }))
        ]));
  }

  /// Section Widget
  Widget _buildRecommendedDoctors() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_recommended_doctors".tr,
              style: CustomTextStyles.titleMedium18),
          SizedBox(height: 11.v),
          GestureDetector(
              onTap: () {
                onTapDr();
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
                                  Text("msg_dr_marcus_horizon".tr,
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 9.v),
                                  Text("lbl_chardiologist".tr,
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
                                                      Text("lbl_4_7".tr,
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
                                                      child: Text(
                                                          "lbl_800m_away".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallErrorContainer))
                                                ])
                                          ]))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildYourRecentDoctors() {
    return Container(
        margin: EdgeInsets.only(bottom: 68.v),
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_your_recent_doctors".tr,
                  style: CustomTextStyles.titleMedium18),
              SizedBox(
                  height: 107.v,
                  child: Obx(() => ListView.separated(
                      padding: EdgeInsets.only(top: 18.v),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 24.h);
                      },
                      itemCount: controller.findDoctorsModelObj.value
                          .doctorsItemList.value.length,
                      itemBuilder: (context, index) {
                        DoctorsItemModel model = controller.findDoctorsModelObj
                            .value.doctorsItemList.value[index];
                        return DoctorsItemWidget(model);
                      })))
            ]));
  }

  /// Navigates to the doctorDetailScreen when the action is triggered.
  onTapDr() {
    Get.toNamed(
      AppRoutes.doctorDetailScreen,
    );
  }
}
