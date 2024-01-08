import 'package:the_4_01_e_commerce/core/app_export.dart';import 'package:the_4_01_e_commerce/presentation/order_screen/models/order_model.dart';/// A controller class for the OrderScreen.
///
/// This class manages the state of the OrderScreen, including the
/// current orderModelObj
class OrderController extends GetxController {Rx<OrderModel> orderModelObj = OrderModel().obs;

 }
