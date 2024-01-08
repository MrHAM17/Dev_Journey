import 'controller/weekly_ranking_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/rising_stars_page/rising_stars_page.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/weekly_ranking_page/weekly_ranking_page.dart';

// ignore_for_file: must_be_immutable
class WeeklyRankingTabContainerScreen
    extends GetWidget<WeeklyRankingTabContainerController> {
  const WeeklyRankingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSeeLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              decoration: AppDecoration.outlineGray1002.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrameGray300,
                    height: 3.v,
                    width: 38.h,
                  ),
                  SizedBox(height: 27.v),
                  Container(
                    height: 37.v,
                    width: 318.h,
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
                            "lbl_weekly_ranking".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_rising_stars".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 468.v,
                    child: TabBarView(
                      controller: controller.tabviewController,
                      children: [
                        WeeklyRankingPage(),
                        RisingStarsPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
