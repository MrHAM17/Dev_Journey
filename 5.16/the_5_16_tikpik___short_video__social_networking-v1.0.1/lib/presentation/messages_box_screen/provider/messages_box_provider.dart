import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/messages_box_screen/models/messages_box_model.dart';/// A provider class for the MessagesBoxScreen.
///
/// This provider manages the state of the MessagesBoxScreen, including the
/// current messagesBoxModelObj

// ignore_for_file: must_be_immutable
class MessagesBoxProvider extends ChangeNotifier {TextEditingController messageController = TextEditingController();

MessagesBoxModel messagesBoxModelObj = MessagesBoxModel();

@override void dispose() { super.dispose(); messageController.dispose(); } 
 }
