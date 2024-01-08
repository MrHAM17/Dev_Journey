import '../controller/create_new_pin_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateNewPinTabContainerScreen.
///
/// This class ensures that the CreateNewPinTabContainerController is created when the
/// CreateNewPinTabContainerScreen is first loaded.
class CreateNewPinTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewPinTabContainerController());
  }
}
