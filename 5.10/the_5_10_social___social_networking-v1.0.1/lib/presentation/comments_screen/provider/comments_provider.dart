import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/comments_screen/models/comments_model.dart';
import '../models/commentlist_item_model.dart';

/// A provider class for the CommentsScreen.
///
/// This provider manages the state of the CommentsScreen, including the
/// current commentsModelObj

// ignore_for_file: must_be_immutable
class CommentsProvider extends ChangeNotifier {
  TextEditingController commentController = TextEditingController();

  CommentsModel commentsModelObj = CommentsModel();

  @override
  void dispose() {
    super.dispose();
    commentController.dispose();
  }
}
