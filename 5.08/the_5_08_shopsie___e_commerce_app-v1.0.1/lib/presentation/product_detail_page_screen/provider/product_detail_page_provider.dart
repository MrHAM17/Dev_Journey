import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/product_detail_page_screen/models/product_detail_page_model.dart';
import '../models/productcarousel_item_model.dart';

/// A provider class for the ProductDetailPageScreen.
///
/// This provider manages the state of the ProductDetailPageScreen, including the
/// current productDetailPageModelObj

// ignore_for_file: must_be_immutable
class ProductDetailPageProvider extends ChangeNotifier {
  ProductDetailPageModel productDetailPageModelObj = ProductDetailPageModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
