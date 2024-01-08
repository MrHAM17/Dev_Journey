import '../controller/menu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MenuScreen.
///
/// This class ensures that the MenuController is created when the
/// MenuScreen is first loaded.
class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuController());
  }
}
