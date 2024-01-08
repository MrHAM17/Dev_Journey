import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/product_discover_drawer_draweritem/models/product_discover_drawer_model.dart';
part 'product_discover_drawer_state.dart';

final productDiscoverDrawerNotifier = StateNotifierProvider<
    ProductDiscoverDrawerNotifier, ProductDiscoverDrawerState>(
  (ref) => ProductDiscoverDrawerNotifier(ProductDiscoverDrawerState(
    productDiscoverDrawerModelObj: ProductDiscoverDrawerModel(),
  )),
);

/// A notifier that manages the state of a ProductDiscoverDrawer according to the event that is dispatched to it.
class ProductDiscoverDrawerNotifier
    extends StateNotifier<ProductDiscoverDrawerState> {
  ProductDiscoverDrawerNotifier(ProductDiscoverDrawerState state)
      : super(state) {}
}
