import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/custom_icon_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
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
                            onTapTxtDiscover(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Discover",
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 17.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtShop(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Shop",
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 14.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtFavorites(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Favorites",
                                  style:
                                      CustomTextStyles.titleLargeBlack900_1))),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child:
                              Text("Inbox", style: theme.textTheme.titleLarge)),
                      SizedBox(height: 17.v),
                      Text("Ask an Expert", style: theme.textTheme.titleLarge),
                      SizedBox(height: 53.v),
                      SizedBox(
                          width: 138.h,
                          child: Divider(color: appTheme.gray700, indent: 1.h)),
                      SizedBox(height: 62.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Settings",
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
                          child: Text("Log out",
                              style: CustomTextStyles.titleLargeBlack900_1))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 74.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgRectangle,
            margin: EdgeInsets.only(left: 24.h)),
        title: Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Column(children: [
              AppbarSubtitle(text: "Mildred Bennett"),
              AppbarSubtitleOne(
                  text: "user@gmail.com", margin: EdgeInsets.only(right: 37.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v))
        ]);
  }

  /// Navigates to the discoverScreen when the action is triggered.
  onTapTxtDiscover(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.discoverScreen);
  }

  /// Navigates to the shopScreen when the action is triggered.
  onTapTxtShop(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  /// Navigates to the favoriteScreen when the action is triggered.
  onTapTxtFavorites(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteScreen);
  }
}
