import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/order_screen/models/order_model.dart';import '../models/orders_item_model.dart';/// A provider class for the OrderScreen.
///
/// This provider manages the state of the OrderScreen, including the
/// current orderModelObj

// ignore_for_file: must_be_immutable
class OrderProvider extends ChangeNotifier {OrderModel orderModelObj = OrderModel();

@override void dispose() { super.dispose(); } 
 }
