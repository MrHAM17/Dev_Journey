import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/shop_item_model.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/shop_screen/models/shop_model.dart';
part 'shop_state.dart';

final shopNotifier = StateNotifierProvider<ShopNotifier, ShopState>(
    (ref) => ShopNotifier(ShopState(
            shopModelObj: ShopModel(shopItemList: [
          ShopItemModel(
              surgeShort: ImageConstant.imgRectangle9,
              surgeShort1: "Surge Short",
              price: "68 USD"),
          ShopItemModel(
              surgeShort: ImageConstant.imgRectangle9237x175,
              surgeShort1: "Sweat Jogger French",
              price: "68 USD")
        ]))));

/// A notifier that manages the state of a Shop according to the event that is dispatched to it.
class ShopNotifier extends StateNotifier<ShopState> {
  ShopNotifier(ShopState state) : super(state);
}
