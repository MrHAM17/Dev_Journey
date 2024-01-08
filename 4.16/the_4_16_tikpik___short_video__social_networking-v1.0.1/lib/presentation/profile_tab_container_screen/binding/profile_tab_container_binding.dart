import '../controller/profile_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileTabContainerScreen.
///
/// This class ensures that the ProfileTabContainerController is created when the
/// ProfileTabContainerScreen is first loaded.
class ProfileTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileTabContainerController());
  }
}
