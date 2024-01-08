import '../controller/interests_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InterestsScreen.
///
/// This class ensures that the InterestsController is created when the
/// InterestsScreen is first loaded.
class InterestsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InterestsController());
  }
}
