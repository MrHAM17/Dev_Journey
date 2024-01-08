import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/order_status_screen/models/order_status_model.dart';
import '../models/unsplashvfrcrteqkleight_item_model.dart';
import '../models/orderstatus_item_model.dart';

/// A provider class for the OrderStatusScreen.
///
/// This provider manages the state of the OrderStatusScreen, including the
/// current orderStatusModelObj

// ignore_for_file: must_be_immutable
class OrderStatusProvider extends ChangeNotifier {
  OrderStatusModel orderStatusModelObj = OrderStatusModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
