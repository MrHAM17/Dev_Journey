import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/dashboard_page/models/dashboard_model.dart';
import '../models/specials_item_model.dart';
import '../models/specials1_item_model.dart';
import '../models/specials2_item_model.dart';
import '../models/specials3_item_model.dart';
import '../models/specials4_item_model.dart';
import '../models/specials5_item_model.dart';

/// A provider class for the DashboardPage.
///
/// This provider manages the state of the DashboardPage, including the
/// current dashboardModelObj

// ignore_for_file: must_be_immutable
class DashboardProvider extends ChangeNotifier {
  DashboardModel dashboardModelObj = DashboardModel();

  @override
  void dispose() {
    super.dispose();
  }
}
