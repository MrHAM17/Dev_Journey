import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/comments_bottomsheet/models/comments_model.dart';import 'package:flutter/material.dart';/// A controller class for the CommentsBottomsheet.
///
/// This class manages the state of the CommentsBottomsheet, including the
/// current commentsModelObj
class CommentsController extends GetxController {TextEditingController commentController = TextEditingController();

Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

@override void onClose() { super.onClose(); commentController.dispose(); } 
 }
