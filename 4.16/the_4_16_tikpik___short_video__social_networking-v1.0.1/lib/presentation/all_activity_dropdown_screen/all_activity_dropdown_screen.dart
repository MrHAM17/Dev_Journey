import 'controller/all_activity_dropdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AllActivityDropdownScreen
    extends GetWidget<AllActivityDropdownController> {
  const AllActivityDropdownScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 882.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 82.v,
                    right: 24.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_today".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 22.v),
                      _buildTypeActivityList(),
                      SizedBox(height: 24.v),
                      _buildTypeDefaultList(),
                      SizedBox(height: 24.v),
                      _buildTypeActivityList2(),
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_yesterday".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 22.v),
                      _buildTypeDefaultList1(),
                      SizedBox(height: 24.v),
                      _buildTypeActivityList(),
                      SizedBox(height: 23.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_this_week".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildTypeDefaultList2(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillOnPrimary,
                  child: _buildAutoLayoutVertical4(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeDefaultList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse20,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: _buildAutoLayoutVertical(
            name: "lbl_annabel_rohan".tr,
            startedfollowingyou: "msg_started_following".tr,
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 107.h,
          text: "lbl_follow_back".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypeActivityList2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse12,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_sanjuanita_ordonez".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_liked_your_video".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgImage70,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypeDefaultList1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse21,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: _buildAutoLayoutVertical(
            name: "lbl_clinton_mcclure".tr,
            startedfollowingyou: "msg_started_following".tr,
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 107.h,
          text: "lbl_follow_back".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypeDefaultList2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse3,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: _buildAutoLayoutVertical(
            name: "lbl_rayford_chenail".tr,
            startedfollowingyou: "msg_started_following".tr,
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 107.h,
          text: "lbl_follow_back".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            height: 33.v,
            leadingWidth: 56.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgFrame2,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 1.v,
              ),
            ),
            centerTitle: true,
            title: Obx(
              () => AppbarTitleDropdown(
                hintText: "lbl_all_activity".tr,
                items: controller
                    .allActivityDropdownModelObj.value.dropdownItemList!.value,
                onTap: (value) {
                  controller.onSelected(value);
                },
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgIconlyCurvedSend,
                margin: EdgeInsets.fromLTRB(24.h, 2.v, 24.h, 3.v),
              ),
            ],
          ),
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 137.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconlyCurvedActivity,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.v),
                          child: Text(
                            "lbl_all_activity".tr,
                            style: CustomTextStyles.titleMediumSemiBold_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesCheck,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: _buildThirty(
              iconlyCurvedPaper: ImageConstant.imgIconlyCurvedHeart,
              qA: "lbl_likes".tr,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyCurvedChat,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_comments2".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: _buildThirty(
              iconlyCurvedPaper: ImageConstant.imgIconlyCurvedPaper,
              qA: "lbl_q_a".tr,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLockGray900,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "lbl_mentions_tags".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyCurved3,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_followers".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyCurvedInfo,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "lbl_from_tikpik".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAutoLayoutVertical({
    required String name,
    required String startedfollowingyou,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          startedfollowingyou,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray700,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTypeActivityList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse22,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_thad_eddings".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_leave_a_comment".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgImage71,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThirty({
    required String iconlyCurvedPaper,
    required String qA,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: iconlyCurvedPaper,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            qA,
            style: CustomTextStyles.titleMediumSemiBold_1.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
      ],
    );
  }
}
