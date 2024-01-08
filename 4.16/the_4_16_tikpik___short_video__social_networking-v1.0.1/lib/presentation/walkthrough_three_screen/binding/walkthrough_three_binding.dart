import '../controller/walkthrough_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WalkthroughThreeScreen.
///
/// This class ensures that the WalkthroughThreeController is created when the
/// WalkthroughThreeScreen is first loaded.
class WalkthroughThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalkthroughThreeController());
  }
}
