import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/single_story_screen/models/single_story_model.dart';

/// A provider class for the SingleStoryScreen.
///
/// This provider manages the state of the SingleStoryScreen, including the
/// current singleStoryModelObj
class SingleStoryProvider extends ChangeNotifier {
  TextEditingController commentController = TextEditingController();

  SingleStoryModel singleStoryModelObj = SingleStoryModel();

  @override
  void dispose() {
    super.dispose();
    commentController.dispose();
  }
}
