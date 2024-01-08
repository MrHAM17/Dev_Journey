import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcarousel_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/product_detail_page_screen/models/product_detail_page_model.dart';
part 'product_detail_page_state.dart';

final productDetailPageNotifier =
    StateNotifierProvider<ProductDetailPageNotifier, ProductDetailPageState>(
        (ref) => ProductDetailPageNotifier(ProductDetailPageState(
            sliderIndex: 0,
            productDetailPageModelObj: ProductDetailPageModel(
                productcarouselItemList:
                    List.generate(1, (index) => ProductcarouselItemModel())))));

/// A notifier that manages the state of a ProductDetailPage according to the event that is dispatched to it.
class ProductDetailPageNotifier extends StateNotifier<ProductDetailPageState> {
  ProductDetailPageNotifier(ProductDetailPageState state) : super(state);
}
