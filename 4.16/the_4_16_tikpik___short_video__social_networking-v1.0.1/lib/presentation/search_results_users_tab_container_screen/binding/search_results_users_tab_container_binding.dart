import '../controller/search_results_users_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultsUsersTabContainerScreen.
///
/// This class ensures that the SearchResultsUsersTabContainerController is created when the
/// SearchResultsUsersTabContainerScreen is first loaded.
class SearchResultsUsersTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultsUsersTabContainerController());
  }
}
