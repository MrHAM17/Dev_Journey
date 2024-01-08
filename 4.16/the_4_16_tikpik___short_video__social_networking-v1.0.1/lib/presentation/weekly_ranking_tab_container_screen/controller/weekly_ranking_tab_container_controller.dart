import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/weekly_ranking_tab_container_screen/models/weekly_ranking_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WeeklyRankingTabContainerScreen.
///
/// This class manages the state of the WeeklyRankingTabContainerScreen, including the
/// current weeklyRankingTabContainerModelObj
class WeeklyRankingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<WeeklyRankingTabContainerModel> weeklyRankingTabContainerModelObj =
      WeeklyRankingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
