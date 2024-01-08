import '../controller/booking_cancelled_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingCancelledScreen.
///
/// This class ensures that the BookingCancelledController is created when the
/// BookingCancelledScreen is first loaded.
class BookingCancelledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingCancelledController());
  }
}
