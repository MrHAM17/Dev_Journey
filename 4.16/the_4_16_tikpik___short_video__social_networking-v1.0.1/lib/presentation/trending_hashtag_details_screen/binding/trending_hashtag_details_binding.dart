import '../controller/trending_hashtag_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrendingHashtagDetailsScreen.
///
/// This class ensures that the TrendingHashtagDetailsController is created when the
/// TrendingHashtagDetailsScreen is first loaded.
class TrendingHashtagDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingHashtagDetailsController());
  }
}
