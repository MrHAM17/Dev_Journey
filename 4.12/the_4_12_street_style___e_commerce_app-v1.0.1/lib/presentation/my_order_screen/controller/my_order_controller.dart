import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/my_order_screen/models/my_order_model.dart';

/// A controller class for the MyOrderScreen.
///
/// This class manages the state of the MyOrderScreen, including the
/// current myOrderModelObj
class MyOrderController extends GetxController {
  Rx<MyOrderModel> myOrderModelObj = MyOrderModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }
}
