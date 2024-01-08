import 'controller/trending_sounds_tab_container_controller.dart';
import 'models/trending_sounds_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/trending_hashtag_page/trending_hashtag_page.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/trending_sounds_page/trending_sounds_page.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';

class TrendingSoundsTabContainerPage extends StatelessWidget {
  TrendingSoundsTabContainerPage({Key? key})
      : super(
          key: key,
        );

  TrendingSoundsTabContainerController controller = Get.put(
      TrendingSoundsTabContainerController(
          TrendingSoundsTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.v),
              Container(
                height: 39.v,
                width: 304.h,
                margin: EdgeInsets.only(left: 39.h),
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
                        "lbl_sounds".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_hashtag".tr,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 671.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      TrendingSoundsPage(),
                      TrendingHashtagPage(),
                    ],
                  ),
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
      height: 53.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame2,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_trending".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewindGray900,
          margin: EdgeInsets.fromLTRB(24.h, 12.v, 24.h, 13.v),
        ),
      ],
    );
  }
}
