import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/presentation/dashboard_page/models/dashboard_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardPage.
///
/// This class manages the state of the DashboardPage, including the
/// current dashboardModelObj
class DashboardController extends GetxController {
  DashboardController(this.dashboardModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<DashboardModel> dashboardModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
