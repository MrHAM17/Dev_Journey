import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productsearch_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/product_search_screen/models/product_search_model.dart';
part 'product_search_state.dart';

final productSearchNotifier =
    StateNotifierProvider<ProductSearchNotifier, ProductSearchState>(
  (ref) => ProductSearchNotifier(ProductSearchState(
    searchController: TextEditingController(),
    productSearchModelObj: ProductSearchModel(productsearchItemList: [
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage171x171,
          longSleeveTShirt: "Long Sleeve T-shirt"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage7,
          longSleeveTShirt: "Sliders"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage8,
          longSleeveTShirt: "Slippers"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage9,
          longSleeveTShirt: "Long Sleeve Top"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage10,
          longSleeveTShirt: "Slip Dress"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage11,
          longSleeveTShirt: "Nike Slides")
    ]),
  )),
);

/// A notifier that manages the state of a ProductSearch according to the event that is dispatched to it.
class ProductSearchNotifier extends StateNotifier<ProductSearchState> {
  ProductSearchNotifier(ProductSearchState state) : super(state) {}
}
