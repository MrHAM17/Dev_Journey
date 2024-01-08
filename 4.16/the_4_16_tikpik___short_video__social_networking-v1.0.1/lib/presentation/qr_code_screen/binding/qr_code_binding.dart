import '../controller/qr_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrCodeScreen.
///
/// This class ensures that the QrCodeController is created when the
/// QrCodeScreen is first loaded.
class QrCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeController());
  }
}
