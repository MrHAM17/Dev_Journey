import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/message_history_tab_container_page/models/message_history_tab_container_model.dart';

/// A provider class for the MessageHistoryTabContainerPage.
///
/// This provider manages the state of the MessageHistoryTabContainerPage, including the
/// current messageHistoryTabContainerModelObj
class MessageHistoryTabContainerProvider extends ChangeNotifier {
  MessageHistoryTabContainerModel messageHistoryTabContainerModelObj =
      MessageHistoryTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
