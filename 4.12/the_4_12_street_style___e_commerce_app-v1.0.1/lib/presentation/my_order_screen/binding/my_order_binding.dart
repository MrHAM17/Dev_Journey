import '../controller/my_order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyOrderScreen.
///
/// This class ensures that the MyOrderController is created when the
/// MyOrderScreen is first loaded.
class MyOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrderController());
  }
}
