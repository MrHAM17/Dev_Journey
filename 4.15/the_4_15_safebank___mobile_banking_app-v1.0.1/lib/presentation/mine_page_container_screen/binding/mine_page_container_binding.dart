import '../controller/mine_page_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MinePageContainerScreen.
///
/// This class ensures that the MinePageContainerController is created when the
/// MinePageContainerScreen is first loaded.
class MinePageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MinePageContainerController());
  }
}
