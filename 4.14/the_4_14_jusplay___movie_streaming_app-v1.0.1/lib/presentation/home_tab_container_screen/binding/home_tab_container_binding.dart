import '../controller/home_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeTabContainerScreen.
///
/// This class ensures that the HomeTabContainerController is created when the
/// HomeTabContainerScreen is first loaded.
class HomeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeTabContainerController());
  }
}
