import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/chat_screen/models/chat_model.dart';/// A provider class for the ChatScreen.
///
/// This provider manages the state of the ChatScreen, including the
/// current chatModelObj

// ignore_for_file: must_be_immutable
class ChatProvider extends ChangeNotifier {TextEditingController descriptionController = TextEditingController();

TextEditingController descriptionController1 = TextEditingController();

TextEditingController formChatController = TextEditingController();

ChatModel chatModelObj = ChatModel();

@override void dispose() { super.dispose(); descriptionController.dispose(); descriptionController1.dispose(); formChatController.dispose(); } 
 }
