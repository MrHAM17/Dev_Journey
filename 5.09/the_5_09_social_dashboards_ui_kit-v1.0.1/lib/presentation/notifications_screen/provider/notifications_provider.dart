import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/notifications_screen/models/notifications_model.dart';

/// A provider class for the NotificationsScreen.
///
/// This provider manages the state of the NotificationsScreen, including the
/// current notificationsModelObj

// ignore_for_file: must_be_immutable
class NotificationsProvider extends ChangeNotifier {
  NotificationsModel notificationsModelObj = NotificationsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
