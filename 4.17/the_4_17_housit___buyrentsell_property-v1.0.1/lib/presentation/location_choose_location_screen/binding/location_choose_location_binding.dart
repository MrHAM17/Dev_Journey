import '../controller/location_choose_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LocationChooseLocationScreen.
///
/// This class ensures that the LocationChooseLocationController is created when the
/// LocationChooseLocationScreen is first loaded.
class LocationChooseLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationChooseLocationController());
  }
}
