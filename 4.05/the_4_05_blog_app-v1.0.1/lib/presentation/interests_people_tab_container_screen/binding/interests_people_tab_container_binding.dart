import '../controller/interests_people_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InterestsPeopleTabContainerScreen.
///
/// This class ensures that the InterestsPeopleTabContainerController is created when the
/// InterestsPeopleTabContainerScreen is first loaded.
class InterestsPeopleTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InterestsPeopleTabContainerController());
  }
}
