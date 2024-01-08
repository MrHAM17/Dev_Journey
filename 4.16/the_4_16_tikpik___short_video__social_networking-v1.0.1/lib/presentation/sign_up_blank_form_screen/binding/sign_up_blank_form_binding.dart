import '../controller/sign_up_blank_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpBlankFormScreen.
///
/// This class ensures that the SignUpBlankFormController is created when the
/// SignUpBlankFormScreen is first loaded.
class SignUpBlankFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBlankFormController());
  }
}
