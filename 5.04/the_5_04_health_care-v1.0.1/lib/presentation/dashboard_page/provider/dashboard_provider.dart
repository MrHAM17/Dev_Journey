import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/dashboard_page/models/dashboard_model.dart';
import '../models/fortyseven_item_model.dart';
import '../models/doctor_item_model.dart';

/// A provider class for the DashboardPage.
///
/// This provider manages the state of the DashboardPage, including the
/// current dashboardModelObj

// ignore_for_file: must_be_immutable
class DashboardProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  DashboardModel dashboardModelObj = DashboardModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
