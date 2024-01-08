import '../controller/lets_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LetsInScreen.
///
/// This class ensures that the LetsInController is created when the
/// LetsInScreen is first loaded.
class LetsInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetsInController());
  }
}
