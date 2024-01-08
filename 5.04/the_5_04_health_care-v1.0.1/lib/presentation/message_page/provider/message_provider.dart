import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/message_page/models/message_model.dart';
import '../models/chat_item_model.dart';

/// A provider class for the MessagePage.
///
/// This provider manages the state of the MessagePage, including the
/// current messageModelObj

// ignore_for_file: must_be_immutable
class MessageProvider extends ChangeNotifier {
  MessageModel messageModelObj = MessageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
