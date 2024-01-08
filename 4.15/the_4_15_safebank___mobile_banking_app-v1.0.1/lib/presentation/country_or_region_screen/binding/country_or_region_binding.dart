import '../controller/country_or_region_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CountryOrRegionScreen.
///
/// This class ensures that the CountryOrRegionController is created when the
/// CountryOrRegionScreen is first loaded.
class CountryOrRegionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountryOrRegionController());
  }
}
