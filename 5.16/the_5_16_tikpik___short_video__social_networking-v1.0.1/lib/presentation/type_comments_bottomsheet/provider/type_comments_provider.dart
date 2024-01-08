import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/type_comments_bottomsheet/models/type_comments_model.dart';import '../models/typecomments_item_model.dart';/// A provider class for the TypeCommentsBottomsheet.
///
/// This provider manages the state of the TypeCommentsBottomsheet, including the
/// current typeCommentsModelObj

// ignore_for_file: must_be_immutable
class TypeCommentsProvider extends ChangeNotifier {TextEditingController categoriesGiftComponentAdditioController = TextEditingController();

TypeCommentsModel typeCommentsModelObj = TypeCommentsModel();

@override void dispose() { super.dispose(); categoriesGiftComponentAdditioController.dispose(); } 
 }
