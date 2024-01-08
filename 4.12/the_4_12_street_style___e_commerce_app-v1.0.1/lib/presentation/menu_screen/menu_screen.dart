import 'controller/menu_controller.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/custom_icon_button.dart';

class MenuScreen extends GetWidget<MenuController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 73.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDiscover();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_discover".tr,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 17.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtShop();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_shop".tr,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 14.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtFavorites();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_favorites".tr,
                                  style:
                                      CustomTextStyles.titleLargeBlack900_1))),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_inbox".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 17.v),
                      Text("lbl_ask_an_expert".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 53.v),
                      SizedBox(
                          width: 138.h,
                          child: Divider(color: appTheme.gray700, indent: 1.h)),
                      SizedBox(height: 62.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_settings".tr,
                              style: theme.textTheme.titleLarge)),
                      Spacer(),
                      Container(
                          height: 43.v,
                          width: 70.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomIconButton(
                                height: 43.adaptSize,
                                width: 43.adaptSize,
                                alignment: Alignment.centerRight,
                                child: CustomImageView()),
                            CustomImageView(
                                imagePath: ImageConstant.imgShape,
                                height: 23.v,
                                width: 55.h,
                                alignment: Alignment.centerLeft)
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_log_out".tr,
                              style: CustomTextStyles.titleLargeBlack900_1))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 74.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgRectangle,
            margin: EdgeInsets.only(left: 24.h)),
        title: Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Column(children: [
              AppbarSubtitle(text: "lbl_mildred_bennett".tr),
              AppbarSubtitleOne(
                  text: "lbl_user_gmail_com".tr,
                  margin: EdgeInsets.only(right: 37.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v))
        ]);
  }

  /// Navigates to the discoverScreen when the action is triggered.
  onTapTxtDiscover() {
    Get.toNamed(
      AppRoutes.discoverScreen,
    );
  }

  /// Navigates to the shopScreen when the action is triggered.
  onTapTxtShop() {
    Get.toNamed(
      AppRoutes.shopScreen,
    );
  }

  /// Navigates to the favoriteScreen when the action is triggered.
  onTapTxtFavorites() {
    Get.toNamed(
      AppRoutes.favoriteScreen,
    );
  }
}
