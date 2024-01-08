import '../controller/atm_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AtmLocationScreen.
///
/// This class ensures that the AtmLocationController is created when the
/// AtmLocationScreen is first loaded.
class AtmLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AtmLocationController());
  }
}
