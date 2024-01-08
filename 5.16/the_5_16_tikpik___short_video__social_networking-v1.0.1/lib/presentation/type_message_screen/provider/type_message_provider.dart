import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/type_message_screen/models/type_message_model.dart';/// A provider class for the TypeMessageScreen.
///
/// This provider manages the state of the TypeMessageScreen, including the
/// current typeMessageModelObj

// ignore_for_file: must_be_immutable
class TypeMessageProvider extends ChangeNotifier {TextEditingController userController = TextEditingController();

TypeMessageModel typeMessageModelObj = TypeMessageModel();

@override void dispose() { super.dispose(); userController.dispose(); } 
 }
