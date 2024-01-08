import '../controller/review_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewTabContainerScreen.
///
/// This class ensures that the ReviewTabContainerController is created when the
/// ReviewTabContainerScreen is first loaded.
class ReviewTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewTabContainerController());
  }
}
