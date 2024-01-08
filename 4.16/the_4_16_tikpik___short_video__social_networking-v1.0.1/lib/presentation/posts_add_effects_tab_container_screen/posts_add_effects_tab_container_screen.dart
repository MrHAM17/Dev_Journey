import 'controller/posts_add_effects_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/posts_add_effects_page/posts_add_effects_page.dart';

// ignore_for_file: must_be_immutable
class PostsAddEffectsTabContainerScreen
    extends GetWidget<PostsAddEffectsTabContainerController> {
  const PostsAddEffectsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgFrameGray300,
                height: 3.v,
                width: 38.h,
              ),
              SizedBox(height: 23.v),
              Text(
                "lbl_effects".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 24.v),
              Divider(
                indent: 24.h,
                endIndent: 24.h,
              ),
              SizedBox(height: 25.v),
              Container(
                height: 38.v,
                width: 330.h,
                margin: EdgeInsets.only(left: 24.h),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: appTheme.gray500,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_trending".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_new".tr,
                      ),
                    ),
                  ],
                ),
              ),
              _buildTabBarView(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
      height: 336.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          PostsAddEffectsPage(),
          PostsAddEffectsPage(),
        ],
      ),
    );
  }
}
