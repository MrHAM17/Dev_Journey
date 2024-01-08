import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/product_discover_screen/models/product_discover_model.dart';
part 'product_discover_state.dart';

final productDiscoverNotifier = StateNotifierProvider<ProductDiscoverNotifier,
    ProductDiscoverState>((ref) => ProductDiscoverNotifier(ProductDiscoverState(
        productDiscoverModelObj: ProductDiscoverModel(listItemList: [
      ListItemModel(
          image: ImageConstant.imgImage3,
          womenBlueSkinny: "Women Blue Skinny Fit High-Rise Light Fade ",
          price: " 13.99"),
      ListItemModel(
          image: ImageConstant.imgImage4,
          womenBlueSkinny: "Blue Pure Cotton Relaxed Fit High-Rise Clean Look ",
          price: " 24.99"),
      ListItemModel(
          image: ImageConstant.imgImage5,
          womenBlueSkinny: "Women Blue Skinny Fit High-Rise Light Fade ",
          price: " 13.99"),
      ListItemModel(
          image: ImageConstant.imgImage6,
          womenBlueSkinny: "Fit High-Rise Clean Look Stretchable Cropped Jeans",
          price: " 24.99")
    ]))));

/// A notifier that manages the state of a ProductDiscover according to the event that is dispatched to it.
class ProductDiscoverNotifier extends StateNotifier<ProductDiscoverState> {
  ProductDiscoverNotifier(ProductDiscoverState state) : super(state);
}
