import '../controller/transfer_request_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransferRequestScreen.
///
/// This class ensures that the TransferRequestController is created when the
/// TransferRequestScreen is first loaded.
class TransferRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferRequestController());
  }
}
