import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/product_discover_screen/models/product_discover_model.dart';
import '../models/list_item_model.dart';

/// A provider class for the ProductDiscoverScreen.
///
/// This provider manages the state of the ProductDiscoverScreen, including the
/// current productDiscoverModelObj

// ignore_for_file: must_be_immutable
class ProductDiscoverProvider extends ChangeNotifier {
  ProductDiscoverModel productDiscoverModelObj = ProductDiscoverModel();

  @override
  void dispose() {
    super.dispose();
  }
}
