import '../controller/set_your_fingerprint_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetYourFingerprintScreen.
///
/// This class ensures that the SetYourFingerprintController is created when the
/// SetYourFingerprintScreen is first loaded.
class SetYourFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetYourFingerprintController());
  }
}
