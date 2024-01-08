import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/home_swipe_up_instructions_screen/models/home_swipe_up_instructions_model.dart';

/// A controller class for the HomeSwipeUpInstructionsScreen.
///
/// This class manages the state of the HomeSwipeUpInstructionsScreen, including the
/// current homeSwipeUpInstructionsModelObj
class HomeSwipeUpInstructionsController extends GetxController {
  Rx<HomeSwipeUpInstructionsModel> homeSwipeUpInstructionsModelObj =
      HomeSwipeUpInstructionsModel().obs;
}
