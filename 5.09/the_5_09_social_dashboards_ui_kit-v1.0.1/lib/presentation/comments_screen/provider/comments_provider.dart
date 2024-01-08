import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/comments_screen/models/comments_model.dart';
import '../models/comments_item_model.dart';

/// A provider class for the CommentsScreen.
///
/// This provider manages the state of the CommentsScreen, including the
/// current commentsModelObj

// ignore_for_file: must_be_immutable
class CommentsProvider extends ChangeNotifier {
  CommentsModel commentsModelObj = CommentsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
