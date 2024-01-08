import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
