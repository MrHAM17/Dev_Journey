import '../controller/explore_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreScreen.
///
/// This class ensures that the ExploreController is created when the
/// ExploreScreen is first loaded.
class ExploreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreController());
  }
}
