import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/messages_screen/models/messages_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagesScreen.
///
/// This class manages the state of the MessagesScreen, including the
/// current messagesModelObj
class MessagesController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
