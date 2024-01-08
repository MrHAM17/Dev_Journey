import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mycart_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/my_cart_page/models/my_cart_model.dart';
part 'my_cart_state.dart';

final myCartNotifier = StateNotifierProvider<MyCartNotifier, MyCartState>(
    (ref) => MyCartNotifier(MyCartState(
            myCartModelObj: MyCartModel(mycartItemList: [
          MycartItemModel(
              jacket: ImageConstant.imgUnsplash8hqpxttomn0,
              jacket1: "Jacket",
              blackJacket: "Black Jacket",
              sizeXL: "Size: XL",
              one: "1"),
          MycartItemModel(
              jacket: ImageConstant.imgUnsplash8hqpxttomn0171x142,
              jacket1: "Casual",
              blackJacket: "Casual Jeans Shoes",
              sizeXL: "Size: XL",
              one: "1")
        ]))));

/// A notifier that manages the state of a MyCart according to the event that is dispatched to it.
class MyCartNotifier extends StateNotifier<MyCartState> {
  MyCartNotifier(MyCartState state) : super(state);
}
