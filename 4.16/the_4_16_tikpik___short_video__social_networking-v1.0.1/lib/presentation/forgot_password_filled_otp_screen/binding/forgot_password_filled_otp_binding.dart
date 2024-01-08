import '../controller/forgot_password_filled_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgotPasswordFilledOtpScreen.
///
/// This class ensures that the ForgotPasswordFilledOtpController is created when the
/// ForgotPasswordFilledOtpScreen is first loaded.
class ForgotPasswordFilledOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordFilledOtpController());
  }
}
