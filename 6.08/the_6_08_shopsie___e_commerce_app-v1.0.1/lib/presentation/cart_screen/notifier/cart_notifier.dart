import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cart_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/cart_screen/models/cart_model.dart';
part 'cart_state.dart';

final cartNotifier = StateNotifierProvider<CartNotifier, CartState>(
    (ref) => CartNotifier(CartState(
            cartModelObj: CartModel(cartItemList: [
          CartItemModel(
              image: ImageConstant.imgImage110x109,
              price: "12.50",
              shortsInYellow: "shorts in Yellow",
              one: "1"),
          CartItemModel(
              image: ImageConstant.imgImage12,
              price: "99.30",
              shortsInYellow: "Print Maxi Dress",
              one: "1")
        ]))));

/// A notifier that manages the state of a Cart according to the event that is dispatched to it.
class CartNotifier extends StateNotifier<CartState> {
  CartNotifier(CartState state) : super(state);
}
