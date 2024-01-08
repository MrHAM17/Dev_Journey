import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/product_discover_drawer_draweritem/models/product_discover_drawer_model.dart';

/// A provider class for the ProductDiscoverDrawerDraweritem.
///
/// This provider manages the state of the ProductDiscoverDrawerDraweritem, including the
/// current productDiscoverDrawerModelObj
class ProductDiscoverDrawerProvider extends ChangeNotifier {
  ProductDiscoverDrawerModel productDiscoverDrawerModelObj =
      ProductDiscoverDrawerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
