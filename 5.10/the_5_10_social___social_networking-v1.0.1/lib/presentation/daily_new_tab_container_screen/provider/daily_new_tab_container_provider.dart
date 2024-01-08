import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/daily_new_tab_container_screen/models/daily_new_tab_container_model.dart';

/// A provider class for the DailyNewTabContainerScreen.
///
/// This provider manages the state of the DailyNewTabContainerScreen, including the
/// current dailyNewTabContainerModelObj
class DailyNewTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  DailyNewTabContainerModel dailyNewTabContainerModelObj =
      DailyNewTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
