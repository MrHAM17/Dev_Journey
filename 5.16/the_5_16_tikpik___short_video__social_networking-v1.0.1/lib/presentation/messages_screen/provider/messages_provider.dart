import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/messages_screen/models/messages_model.dart';import '../models/autolayouthorizontal7_item_model.dart';import '../models/theresavarnes_item_model.dart';/// A provider class for the MessagesScreen.
///
/// This provider manages the state of the MessagesScreen, including the
/// current messagesModelObj

// ignore_for_file: must_be_immutable
class MessagesProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

MessagesModel messagesModelObj = MessagesModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
