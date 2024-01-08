import '../controller/go_live_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GoLiveScreen.
///
/// This class ensures that the GoLiveController is created when the
/// GoLiveScreen is first loaded.
class GoLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoLiveController());
  }
}
