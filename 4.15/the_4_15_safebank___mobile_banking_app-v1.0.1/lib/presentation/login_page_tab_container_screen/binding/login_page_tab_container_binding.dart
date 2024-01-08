import '../controller/login_page_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginPageTabContainerScreen.
///
/// This class ensures that the LoginPageTabContainerController is created when the
/// LoginPageTabContainerScreen is first loaded.
class LoginPageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPageTabContainerController());
  }
}
