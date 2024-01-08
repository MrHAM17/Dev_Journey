import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/messages_box_screen/models/messages_box_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagesBoxScreen.
///
/// This class manages the state of the MessagesBoxScreen, including the
/// current messagesBoxModelObj
class MessagesBoxController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<MessagesBoxModel> messagesBoxModelObj = MessagesBoxModel().obs;

@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
