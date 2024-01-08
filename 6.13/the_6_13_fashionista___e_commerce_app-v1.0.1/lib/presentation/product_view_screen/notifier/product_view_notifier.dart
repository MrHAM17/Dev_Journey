import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame4_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/product_view_screen/models/product_view_model.dart';
part 'product_view_state.dart';

final productViewNotifier =
    StateNotifierProvider<ProductViewNotifier, ProductViewState>((ref) =>
        ProductViewNotifier(ProductViewState(
            productViewModelObj: ProductViewModel(
                frame4ItemList:
                    List.generate(5, (index) => Frame4ItemModel())))));

/// A notifier that manages the state of a ProductView according to the event that is dispatched to it.
class ProductViewNotifier extends StateNotifier<ProductViewState> {
  ProductViewNotifier(ProductViewState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Frame4ItemModel> newList =
        List<Frame4ItemModel>.from(state.productViewModelObj!.frame4ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        productViewModelObj:
            state.productViewModelObj?.copyWith(frame4ItemList: newList));
  }
}
