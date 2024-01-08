import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/my_order_screen/models/my_order_model.dart';
import '../models/myorder_item_model.dart';

/// A provider class for the MyOrderScreen.
///
/// This provider manages the state of the MyOrderScreen, including the
/// current myOrderModelObj

// ignore_for_file: must_be_immutable
class MyOrderProvider extends ChangeNotifier {
  MyOrderModel myOrderModelObj = MyOrderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
