import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/splash_screen/models/splash_model.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(
        AppRoutes.getStartedScreen,
      );
    });
  }
}
