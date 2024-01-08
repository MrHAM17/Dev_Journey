import '../home_page/widgets/eightytwo_item_widget.dart';
import '../home_page/widgets/sixtyseven_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/eightytwo_item_model.dart';
import 'models/home_model.dart';
import 'models/sixtyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  _buildFeatured(),
                  SizedBox(height: 36.v),
                  _buildEightyTwo()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 68.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRewind,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapRewind();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_home".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconNotification,
              margin: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFeatured() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_featured".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 15.v),
              SizedBox(
                  height: 49.v,
                  child: Obx(() => ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 18.h);
                      },
                      itemCount: controller
                          .homeModelObj.value.sixtysevenItemList.value.length,
                      itemBuilder: (context, index) {
                        SixtysevenItemModel model = controller
                            .homeModelObj.value.sixtysevenItemList.value[index];
                        return SixtysevenItemWidget(model);
                      })))
            ])));
  }

  /// Section Widget
  Widget _buildEightyTwo() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 18.v);
                },
                itemCount: controller
                    .homeModelObj.value.eightytwoItemList.value.length,
                itemBuilder: (context, index) {
                  EightytwoItemModel model = controller
                      .homeModelObj.value.eightytwoItemList.value[index];
                  return EightytwoItemWidget(model);
                }))));
  }

  /// Navigates to the searchTabContainerScreen when the action is triggered.
  onTapRewind() {
    Get.toNamed(
      AppRoutes.searchTabContainerScreen,
    );
  }
}
