import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/shop_item_model.dart';
import 'package:the_3_12_street_style___e_commerce_app/presentation/shop_screen/models/shop_model.dart';
part 'shop_event.dart';
part 'shop_state.dart';

/// A bloc that manages the state of a Shop according to the event that is dispatched to it.
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc(ShopState initialState) : super(initialState) {
    on<ShopInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShopInitialEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(
        shopModelObj:
            state.shopModelObj?.copyWith(shopItemList: fillShopItemList())));
  }

  List<ShopItemModel> fillShopItemList() {
    return [
      ShopItemModel(
          surgeShort: ImageConstant.imgRectangle9,
          surgeShort1: "Surge Short",
          price: "68 USD"),
      ShopItemModel(
          surgeShort: ImageConstant.imgRectangle9237x175,
          surgeShort1: "Sweat Jogger French",
          price: "68 USD")
    ];
  }
}
