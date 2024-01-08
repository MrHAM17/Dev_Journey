import '../controller/walkthrough_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WalkthroughTwoScreen.
///
/// This class ensures that the WalkthroughTwoController is created when the
/// WalkthroughTwoScreen is first loaded.
class WalkthroughTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalkthroughTwoController());
  }
}
