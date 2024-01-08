import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/type_comments_bottomsheet/models/type_comments_model.dart';import 'package:flutter/material.dart';/// A controller class for the TypeCommentsBottomsheet.
///
/// This class manages the state of the TypeCommentsBottomsheet, including the
/// current typeCommentsModelObj
class TypeCommentsController extends GetxController {TextEditingController categoriesGiftComponentAdditioController = TextEditingController();

Rx<TypeCommentsModel> typeCommentsModelObj = TypeCommentsModel().obs;

@override void onClose() { super.onClose(); categoriesGiftComponentAdditioController.dispose(); } 
 }
