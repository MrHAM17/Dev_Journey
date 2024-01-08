import '../controller/home_recently_watched_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeRecentlyWatchedContainerScreen.
///
/// This class ensures that the HomeRecentlyWatchedContainerController is created when the
/// HomeRecentlyWatchedContainerScreen is first loaded.
class HomeRecentlyWatchedContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRecentlyWatchedContainerController());
  }
}
