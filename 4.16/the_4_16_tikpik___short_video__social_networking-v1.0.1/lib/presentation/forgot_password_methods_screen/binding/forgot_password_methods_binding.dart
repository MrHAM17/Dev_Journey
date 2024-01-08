import '../controller/forgot_password_methods_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgotPasswordMethodsScreen.
///
/// This class ensures that the ForgotPasswordMethodsController is created when the
/// ForgotPasswordMethodsScreen is first loaded.
class ForgotPasswordMethodsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordMethodsController());
  }
}
