import '../home_screen/widgets/framethirtysix_item_widget.dart';
import '../home_screen/widgets/stories_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/framethirtysix_item_model.dart';
import 'models/stories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Column(children: [
                  _buildFrameThirtySix(),
                  SizedBox(height: 18.v),
                  Opacity(opacity: 0.5, child: Divider()),
                  SizedBox(height: 18.v),
                  _buildThirtySix(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 15.v)),
        title: AppbarTitle(
            text: "lbl_home".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame11,
              margin: EdgeInsets.only(left: 20.h, top: 16.v, right: 15.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgRewind,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 35.h))
        ]);
  }

  /// Section Widget
  Widget _buildFrameThirtySix() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 125.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16.h);
                },
                itemCount: controller
                    .homeModelObj.value.framethirtysixItemList.value.length,
                itemBuilder: (context, index) {
                  FramethirtysixItemModel model = controller
                      .homeModelObj.value.framethirtysixItemList.value[index];
                  return FramethirtysixItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildThirtySix() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_top_stories".tr,
              style: CustomTextStyles.titleSmallBlack900),
          SizedBox(height: 20.v),
          Obx(() => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Opacity(
                    opacity: 0.5,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.5.v),
                        child: SizedBox(
                            width: 335.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300.withOpacity(0.53)))));
              },
              itemCount:
                  controller.homeModelObj.value.storiesItemList.value.length,
              itemBuilder: (context, index) {
                StoriesItemModel model =
                    controller.homeModelObj.value.storiesItemList.value[index];
                return StoriesItemWidget(model);
              }))
        ]));
  }
}
