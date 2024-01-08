import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/single_story_screen/models/single_story_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SingleStoryScreen.
///
/// This class manages the state of the SingleStoryScreen, including the
/// current singleStoryModelObj
class SingleStoryController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<SingleStoryModel> singleStoryModelObj = SingleStoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
