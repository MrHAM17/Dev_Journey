import '../controller/search_topics_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchTopicsScreen.
///
/// This class ensures that the SearchTopicsController is created when the
/// SearchTopicsScreen is first loaded.
class SearchTopicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTopicsController());
  }
}
