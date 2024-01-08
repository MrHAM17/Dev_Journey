import '../controller/search_type_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchTypeTabContainerScreen.
///
/// This class ensures that the SearchTypeTabContainerController is created when the
/// SearchTypeTabContainerScreen is first loaded.
class SearchTypeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTypeTabContainerController());
  }
}
