import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/weekly_ranking_tab_container_screen/models/weekly_ranking_tab_container_model.dart';

/// A provider class for the WeeklyRankingTabContainerScreen.
///
/// This provider manages the state of the WeeklyRankingTabContainerScreen, including the
/// current weeklyRankingTabContainerModelObj
class WeeklyRankingTabContainerProvider extends ChangeNotifier {
  WeeklyRankingTabContainerModel weeklyRankingTabContainerModelObj =
      WeeklyRankingTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
