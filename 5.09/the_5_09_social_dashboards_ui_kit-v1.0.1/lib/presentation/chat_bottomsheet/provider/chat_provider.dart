import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/chat_bottomsheet/models/chat_model.dart';

/// A provider class for the ChatBottomsheet.
///
/// This provider manages the state of the ChatBottomsheet, including the
/// current chatModelObj

// ignore_for_file: must_be_immutable
class ChatProvider extends ChangeNotifier {
  ChatModel chatModelObj = ChatModel();

  @override
  void dispose() {
    super.dispose();
  }
}
