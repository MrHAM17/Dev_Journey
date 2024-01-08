import '../controller/filter_choose_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FilterChooseLocationScreen.
///
/// This class ensures that the FilterChooseLocationController is created when the
/// FilterChooseLocationScreen is first loaded.
class FilterChooseLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterChooseLocationController());
  }
}
