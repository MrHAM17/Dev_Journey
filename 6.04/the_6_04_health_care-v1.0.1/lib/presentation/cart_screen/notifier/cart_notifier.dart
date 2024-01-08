import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/drugs2_item_model.dart';
import 'package:the_6_04_health_care/presentation/cart_screen/models/cart_model.dart';
part 'cart_state.dart';

final cartNotifier = StateNotifierProvider<CartNotifier, CartState>(
    (ref) => CartNotifier(CartState(
            cartModelObj: CartModel(drugs2ItemList: [
          Drugs2ItemModel(
              oBHCombi: ImageConstant.imgDrugThumbnail72x72,
              oBHCombi1: "OBH Combi",
              measurement: "75ml",
              counter: "1",
              price: "9.99"),
          Drugs2ItemModel(
              oBHCombi: ImageConstant.imgDrugThumbnail4,
              oBHCombi1: "Panadol",
              measurement: "20pcs",
              counter: "1",
              price: "9.99")
        ]))));

/// A notifier that manages the state of a Cart according to the event that is dispatched to it.
class CartNotifier extends StateNotifier<CartState> {
  CartNotifier(CartState state) : super(state);
}
