import '../controller/tracking_order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrackingOrderScreen.
///
/// This class ensures that the TrackingOrderController is created when the
/// TrackingOrderScreen is first loaded.
class TrackingOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackingOrderController());
  }
}
