import '../controller/location_fill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LocationFillScreen.
///
/// This class ensures that the LocationFillController is created when the
/// LocationFillScreen is first loaded.
class LocationFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationFillController());
  }
}
