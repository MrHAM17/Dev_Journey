import '../controller/set_fingerprint_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetFingerprintScreen.
///
/// This class ensures that the SetFingerprintController is created when the
/// SetFingerprintScreen is first loaded.
class SetFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetFingerprintController());
  }
}
