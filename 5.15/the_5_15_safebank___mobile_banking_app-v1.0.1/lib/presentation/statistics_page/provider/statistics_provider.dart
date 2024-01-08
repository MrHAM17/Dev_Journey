import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/statistics_page/models/statistics_model.dart';

/// A provider class for the StatisticsPage.
///
/// This provider manages the state of the StatisticsPage, including the
/// current statisticsModelObj
class StatisticsProvider extends ChangeNotifier {
  StatisticsModel statisticsModelObj = StatisticsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
