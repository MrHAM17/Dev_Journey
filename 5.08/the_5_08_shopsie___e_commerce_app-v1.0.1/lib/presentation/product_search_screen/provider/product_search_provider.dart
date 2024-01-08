import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/product_search_screen/models/product_search_model.dart';
import '../models/productsearch_item_model.dart';

/// A provider class for the ProductSearchScreen.
///
/// This provider manages the state of the ProductSearchScreen, including the
/// current productSearchModelObj

// ignore_for_file: must_be_immutable
class ProductSearchProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ProductSearchModel productSearchModelObj = ProductSearchModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
