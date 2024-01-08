import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/notifications_general_page/models/notifications_general_model.dart';
import '../models/notificationsgeneral_item_model.dart';

/// A provider class for the NotificationsGeneralPage.
///
/// This provider manages the state of the NotificationsGeneralPage, including the
/// current notificationsGeneralModelObj

// ignore_for_file: must_be_immutable
class NotificationsGeneralProvider extends ChangeNotifier {
  NotificationsGeneralModel notificationsGeneralModelObj =
      NotificationsGeneralModel();

  @override
  void dispose() {
    super.dispose();
  }
}
