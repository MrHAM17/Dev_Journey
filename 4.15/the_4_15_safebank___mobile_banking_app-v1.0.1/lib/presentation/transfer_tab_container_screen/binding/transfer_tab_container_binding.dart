import '../controller/transfer_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransferTabContainerScreen.
///
/// This class ensures that the TransferTabContainerController is created when the
/// TransferTabContainerScreen is first loaded.
class TransferTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferTabContainerController());
  }
}
