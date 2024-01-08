import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/comments_bottomsheet/models/comments_model.dart';import '../models/comments_item_model.dart';/// A provider class for the CommentsBottomsheet.
///
/// This provider manages the state of the CommentsBottomsheet, including the
/// current commentsModelObj

// ignore_for_file: must_be_immutable
class CommentsProvider extends ChangeNotifier {TextEditingController commentController = TextEditingController();

CommentsModel commentsModelObj = CommentsModel();

@override void dispose() { super.dispose(); commentController.dispose(); } 
 }
