import 'controller/search_topics_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class SearchTopicsScreen extends GetWidget<SearchTopicsController> {
  const SearchTopicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_explore_topics".tr,
                          style: CustomTextStyles.titleMediumBold),
                      SizedBox(height: 18.v),
                      Text("lbl_books".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 12.v),
                      Text("lbl_fiction".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("lbl_comics".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("lbl_art".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 14.v),
                      Text("lbl_visual_design".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("lbl_technology".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      Text("lbl_science".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("lbl_business".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("lbl_psychology".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 12.v),
                      Text("lbl_creativity".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      Text("lbl_education".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("lbl_feminism".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("msg_artificial_intelligence".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      Text("lbl_health".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("lbl_design".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "lbl_search".tr,
            controller: controller.searchController));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
