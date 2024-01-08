import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/message_history_page/models/message_history_model.dart';
import '../models/messagehistory_item_model.dart';

/// A provider class for the MessageHistoryPage.
///
/// This provider manages the state of the MessageHistoryPage, including the
/// current messageHistoryModelObj

// ignore_for_file: must_be_immutable
class MessageHistoryProvider extends ChangeNotifier {
  MessageHistoryModel messageHistoryModelObj = MessageHistoryModel();

  @override
  void dispose() {
    super.dispose();
  }
}
