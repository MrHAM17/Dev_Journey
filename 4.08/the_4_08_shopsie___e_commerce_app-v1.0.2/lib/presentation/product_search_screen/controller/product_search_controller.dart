import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_4_08_shopsie___e_commerce_app/presentation/product_search_screen/models/product_search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProductSearchScreen.
///
/// This class manages the state of the ProductSearchScreen, including the
/// current productSearchModelObj
class ProductSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ProductSearchModel> productSearchModelObj = ProductSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
