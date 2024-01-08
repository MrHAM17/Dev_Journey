import '../controller/trending_sounds_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrendingSoundsDetailsScreen.
///
/// This class ensures that the TrendingSoundsDetailsController is created when the
/// TrendingSoundsDetailsScreen is first loaded.
class TrendingSoundsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingSoundsDetailsController());
  }
}
