import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 49.v,
          ),
          child: Column(
            children: [
              _buildNine(),
              SizedBox(height: 47.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 63.h),
                  child: Text(
                    "lbl_bestsellers".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 294.h,
                margin: EdgeInsets.only(
                  left: 19.h,
                  right: 20.h,
                ),
                child: Text(
                  "msg_fuel_your_workout".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallGray500.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 55.v,
      title: AppbarTitle(
        text: "lbl_street_style".tr,
        margin: EdgeInsets.only(left: 23.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 13.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup86,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 13.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup84,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 13.v,
            right: 41.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNine() {
    return Container(
      width: 334.h,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 38.v,
      ),
      decoration: AppDecoration.effect.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150.h,
            child: Divider(),
          ),
          SizedBox(height: 36.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 253.h,
              margin: EdgeInsets.only(right: 17.h),
              child: Text(
                "msg_big_seasonal_sale".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.displayMedium50.copyWith(
                  height: 1.04,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "lbl_save_up_to".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 13.v),
          Text(
            "lbl_75".tr,
            style: CustomTextStyles.displaySmallBold,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 150.h,
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
