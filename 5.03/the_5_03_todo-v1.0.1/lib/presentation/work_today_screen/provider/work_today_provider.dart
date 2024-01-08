import 'package:flutter/material.dart';
import 'package:the_5_03_todo/core/app_export.dart';
import 'package:the_5_03_todo/presentation/work_today_screen/models/work_today_model.dart';

/// A provider class for the WorkTodayScreen.
///
/// This provider manages the state of the WorkTodayScreen, including the
/// current workTodayModelObj

// ignore_for_file: must_be_immutable
class WorkTodayProvider extends ChangeNotifier {
  WorkTodayModel workTodayModelObj = WorkTodayModel();

  @override
  void dispose() {
    super.dispose();
  }
}
