import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/type_message_screen/models/type_message_model.dart';import 'package:flutter/material.dart';/// A controller class for the TypeMessageScreen.
///
/// This class manages the state of the TypeMessageScreen, including the
/// current typeMessageModelObj
class TypeMessageController extends GetxController {TextEditingController userController = TextEditingController();

Rx<TypeMessageModel> typeMessageModelObj = TypeMessageModel().obs;

@override void onClose() { super.onClose(); userController.dispose(); } 
 }
