import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/daily_new_page/models/daily_new_model.dart';
import '../models/profiles1_item_model.dart';
import '../models/forty_item_model.dart';

/// A provider class for the DailyNewPage.
///
/// This provider manages the state of the DailyNewPage, including the
/// current dailyNewModelObj

// ignore_for_file: must_be_immutable
class DailyNewProvider extends ChangeNotifier {
  DailyNewModel dailyNewModelObj = DailyNewModel();

  @override
  void dispose() {
    super.dispose();
  }
}
