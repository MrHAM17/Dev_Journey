import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/messages_page/models/messages_model.dart';
import '../models/messages_item_model.dart';

/// A provider class for the MessagesPage.
///
/// This provider manages the state of the MessagesPage, including the
/// current messagesModelObj

// ignore_for_file: must_be_immutable
class MessagesProvider extends ChangeNotifier {
  MessagesModel messagesModelObj = MessagesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
