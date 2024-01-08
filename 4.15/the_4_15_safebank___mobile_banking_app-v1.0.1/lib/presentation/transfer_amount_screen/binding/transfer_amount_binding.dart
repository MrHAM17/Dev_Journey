import '../controller/transfer_amount_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransferAmountScreen.
///
/// This class ensures that the TransferAmountController is created when the
/// TransferAmountScreen is first loaded.
class TransferAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferAmountController());
  }
}
