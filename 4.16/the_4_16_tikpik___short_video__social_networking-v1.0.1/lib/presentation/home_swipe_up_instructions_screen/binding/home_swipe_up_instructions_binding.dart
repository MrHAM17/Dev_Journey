import '../controller/home_swipe_up_instructions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSwipeUpInstructionsScreen.
///
/// This class ensures that the HomeSwipeUpInstructionsController is created when the
/// HomeSwipeUpInstructionsScreen is first loaded.
class HomeSwipeUpInstructionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSwipeUpInstructionsController());
  }
}
