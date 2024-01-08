import '../controller/see_live_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeeLiveScreen.
///
/// This class ensures that the SeeLiveController is created when the
/// SeeLiveScreen is first loaded.
class SeeLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeLiveController());
  }
}
