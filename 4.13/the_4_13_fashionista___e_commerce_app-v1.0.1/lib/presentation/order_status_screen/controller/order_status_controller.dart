import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/order_status_screen/models/order_status_model.dart';

/// A controller class for the OrderStatusScreen.
///
/// This class manages the state of the OrderStatusScreen, including the
/// current orderStatusModelObj
class OrderStatusController extends GetxController {
  Rx<OrderStatusModel> orderStatusModelObj = OrderStatusModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
