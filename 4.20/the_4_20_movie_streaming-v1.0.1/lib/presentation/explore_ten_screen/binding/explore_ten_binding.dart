import '../controller/explore_ten_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreTenScreen.
///
/// This class ensures that the ExploreTenController is created when the
/// ExploreTenScreen is first loaded.
class ExploreTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreTenController());
  }
}
