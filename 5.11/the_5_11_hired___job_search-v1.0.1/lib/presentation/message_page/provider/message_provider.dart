import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/message_page/models/message_model.dart';
import '../models/message_item_model.dart';

/// A provider class for the MessagePage.
///
/// This provider manages the state of the MessagePage, including the
/// current messageModelObj

// ignore_for_file: must_be_immutable
class MessageProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  MessageModel messageModelObj = MessageModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
