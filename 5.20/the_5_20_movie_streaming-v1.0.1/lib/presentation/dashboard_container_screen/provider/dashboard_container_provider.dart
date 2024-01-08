import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/dashboard_container_screen/models/dashboard_container_model.dart';

/// A provider class for the DashboardContainerScreen.
///
/// This provider manages the state of the DashboardContainerScreen, including the
/// current dashboardContainerModelObj

// ignore_for_file: must_be_immutable
class DashboardContainerProvider extends ChangeNotifier {
  DashboardContainerModel dashboardContainerModelObj =
      DashboardContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
