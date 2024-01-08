import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/tracking_order_screen/models/tracking_order_model.dart';

/// A controller class for the TrackingOrderScreen.
///
/// This class manages the state of the TrackingOrderScreen, including the
/// current trackingOrderModelObj
class TrackingOrderController extends GetxController {
  Rx<TrackingOrderModel> trackingOrderModelObj = TrackingOrderModel().obs;
}
