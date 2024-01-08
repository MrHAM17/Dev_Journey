import '../controller/search_not_found_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchNotFoundTabContainerScreen.
///
/// This class ensures that the SearchNotFoundTabContainerController is created when the
/// SearchNotFoundTabContainerScreen is first loaded.
class SearchNotFoundTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchNotFoundTabContainerController());
  }
}
