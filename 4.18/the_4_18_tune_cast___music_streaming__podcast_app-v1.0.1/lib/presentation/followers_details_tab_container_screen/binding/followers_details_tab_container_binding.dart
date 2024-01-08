import '../controller/followers_details_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FollowersDetailsTabContainerScreen.
///
/// This class ensures that the FollowersDetailsTabContainerController is created when the
/// FollowersDetailsTabContainerScreen is first loaded.
class FollowersDetailsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowersDetailsTabContainerController());
  }
}
