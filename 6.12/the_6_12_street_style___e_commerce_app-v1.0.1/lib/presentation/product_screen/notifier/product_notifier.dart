import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/twelve_item_model.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/product_screen/models/product_model.dart';
part 'product_state.dart';

final productNotifier = StateNotifierProvider<ProductNotifier, ProductState>(
    (ref) => ProductNotifier(ProductState(
        sliderIndex: 0,
        productModelObj: ProductModel(twelveItemList: [
          TwelveItemModel(image: ImageConstant.imgRectangle14),
          TwelveItemModel(image: ImageConstant.imgRectangle14)
        ]))));

/// A notifier that manages the state of a Product according to the event that is dispatched to it.
class ProductNotifier extends StateNotifier<ProductState> {
  ProductNotifier(ProductState state) : super(state);
}
