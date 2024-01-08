import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/home_swipe_up_instructions_screen/models/home_swipe_up_instructions_model.dart';

/// A provider class for the HomeSwipeUpInstructionsScreen.
///
/// This provider manages the state of the HomeSwipeUpInstructionsScreen, including the
/// current homeSwipeUpInstructionsModelObj
class HomeSwipeUpInstructionsProvider extends ChangeNotifier {
  HomeSwipeUpInstructionsModel homeSwipeUpInstructionsModelObj =
      HomeSwipeUpInstructionsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
