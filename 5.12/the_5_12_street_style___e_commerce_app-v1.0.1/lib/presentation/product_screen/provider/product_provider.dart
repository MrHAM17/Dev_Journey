import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/product_screen/models/product_model.dart';
import '../models/twelve_item_model.dart';

/// A provider class for the ProductScreen.
///
/// This provider manages the state of the ProductScreen, including the
/// current productModelObj

// ignore_for_file: must_be_immutable
class ProductProvider extends ChangeNotifier {
  ProductModel productModelObj = ProductModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
