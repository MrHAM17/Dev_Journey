import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/activity_page/models/activity_model.dart';

/// A provider class for the ActivityPage.
///
/// This provider manages the state of the ActivityPage, including the
/// current activityModelObj
class ActivityProvider extends ChangeNotifier {
  ActivityModel activityModelObj = ActivityModel();

  @override
  void dispose() {
    super.dispose();
  }
}
