import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/durgs_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/my_cart_screen/models/my_cart_model.dart';
part 'my_cart_state.dart';

final myCartNotifier = StateNotifierProvider<MyCartNotifier, MyCartState>(
    (ref) => MyCartNotifier(MyCartState(
            myCartModelObj: MyCartModel(durgsItemList: [
          DurgsItemModel(
              oBHCombi: ImageConstant.imgHealthvitLLys50x50,
              oBHCombi1: "OBH Combi",
              measurement: "75ml",
              one: "1",
              price: "9.99"),
          DurgsItemModel(
              oBHCombi: ImageConstant.imgCalciumLLysin50x50,
              oBHCombi1: "Panadol",
              measurement: "20pcs",
              one: "2",
              price: "15.99")
        ]))));

/// A notifier that manages the state of a MyCart according to the event that is dispatched to it.
class MyCartNotifier extends StateNotifier<MyCartState> {
  MyCartNotifier(MyCartState state) : super(state);
}
