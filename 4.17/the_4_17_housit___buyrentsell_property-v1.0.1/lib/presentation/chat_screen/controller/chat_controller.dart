import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/chat_screen/models/chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {TextEditingController descriptionController = TextEditingController();

TextEditingController descriptionController1 = TextEditingController();

TextEditingController formChatController = TextEditingController();

Rx<ChatModel> chatModelObj = ChatModel().obs;

@override void onClose() { super.onClose(); descriptionController.dispose(); descriptionController1.dispose(); formChatController.dispose(); } 
 }
