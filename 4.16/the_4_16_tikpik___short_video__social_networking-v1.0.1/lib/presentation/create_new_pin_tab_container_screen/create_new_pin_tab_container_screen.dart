import 'controller/create_new_pin_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/create_new_pin_page/create_new_pin_page.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CreateNewPinTabContainerScreen
    extends GetWidget<CreateNewPinTabContainerController> {
  const CreateNewPinTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                width: 331.h,
                margin: EdgeInsets.symmetric(horizontal: 48.h),
                child: Text(
                  "msg_add_a_pin_number".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 78.v),
              _buildTabview(),
              SizedBox(
                height: 504.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    CreateNewPinPage(),
                    CreateNewPinPage(),
                    CreateNewPinPage(),
                    CreateNewPinPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_create_new_pin".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 61.v,
      width: 381.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900,
        labelStyle: TextStyle(
          fontSize: 24.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 24.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: appTheme.redA20014,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
          border: Border.all(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_8".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_8".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_8".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_8".tr,
            ),
          ),
        ],
      ),
    );
  }
}
