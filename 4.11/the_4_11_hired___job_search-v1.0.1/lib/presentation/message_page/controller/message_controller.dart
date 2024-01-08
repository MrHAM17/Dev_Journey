import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/message_page/models/message_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessagePage.
///
/// This class manages the state of the MessagePage, including the
/// current messageModelObj
class MessageController extends GetxController {
  MessageController(this.messageModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<MessageModel> messageModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
