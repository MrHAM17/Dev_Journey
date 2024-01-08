import '../controller/enter_otp_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnterOtpTabContainerScreen.
///
/// This class ensures that the EnterOtpTabContainerController is created when the
/// EnterOtpTabContainerScreen is first loaded.
class EnterOtpTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterOtpTabContainerController());
  }
}
