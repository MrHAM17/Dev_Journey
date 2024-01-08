import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/cart_page/models/cart_model.dart';import '../models/cart_item_model.dart';/// A provider class for the CartPage.
///
/// This provider manages the state of the CartPage, including the
/// current cartModelObj

// ignore_for_file: must_be_immutable
class CartProvider extends ChangeNotifier {TextEditingController cuponCodeController = TextEditingController();

CartModel cartModelObj = CartModel();

@override void dispose() { super.dispose(); cuponCodeController.dispose(); } 
 }
