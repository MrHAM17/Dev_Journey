import '../controller/sign_in_blank_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInBlankFormScreen.
///
/// This class ensures that the SignInBlankFormController is created when the
/// SignInBlankFormScreen is first loaded.
class SignInBlankFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInBlankFormController());
  }
}
