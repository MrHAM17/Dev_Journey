import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/send_message_screen/models/send_message_model.dart';/// A provider class for the SendMessageScreen.
///
/// This provider manages the state of the SendMessageScreen, including the
/// current sendMessageModelObj

// ignore_for_file: must_be_immutable
class SendMessageProvider extends ChangeNotifier {TextEditingController messageController = TextEditingController();

SendMessageModel sendMessageModelObj = SendMessageModel();

@override void dispose() { super.dispose(); messageController.dispose(); } 
 }
