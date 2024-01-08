import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/notification_screen/models/notification_model.dart';

/// A provider class for the NotificationScreen.
///
/// This provider manages the state of the NotificationScreen, including the
/// current notificationModelObj
class NotificationProvider extends ChangeNotifier {
  NotificationModel notificationModelObj = NotificationModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
