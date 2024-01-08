import '../controller/view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewScreen.
///
/// This class ensures that the ViewController is created when the
/// ViewScreen is first loaded.
class ViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewController());
  }
}
