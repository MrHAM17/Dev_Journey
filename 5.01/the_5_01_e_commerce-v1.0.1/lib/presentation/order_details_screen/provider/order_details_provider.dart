import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/order_details_screen/models/order_details_model.dart';import '../models/product_item_model.dart';/// A provider class for the OrderDetailsScreen.
///
/// This provider manages the state of the OrderDetailsScreen, including the
/// current orderDetailsModelObj

// ignore_for_file: must_be_immutable
class OrderDetailsProvider extends ChangeNotifier {OrderDetailsModel orderDetailsModelObj = OrderDetailsModel();

@override void dispose() { super.dispose(); } 
 }
