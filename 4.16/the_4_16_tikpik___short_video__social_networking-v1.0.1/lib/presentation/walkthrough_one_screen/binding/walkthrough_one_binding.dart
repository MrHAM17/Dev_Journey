import '../controller/walkthrough_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WalkthroughOneScreen.
///
/// This class ensures that the WalkthroughOneController is created when the
/// WalkthroughOneScreen is first loaded.
class WalkthroughOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalkthroughOneController());
  }
}
