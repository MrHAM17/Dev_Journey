import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/myorder_item_model.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/my_order_screen/models/my_order_model.dart';
part 'my_order_state.dart';

final myOrderNotifier = StateNotifierProvider<MyOrderNotifier, MyOrderState>(
    (ref) => MyOrderNotifier(MyOrderState(
            myOrderModelObj: MyOrderModel(myorderItemList: [
          MyorderItemModel(
              x: ImageConstant.imgRectangle9237x175,
              vERTLUNEBoyfriend: "VERTLUNE\nBoyfriend Tee",
              yellowSizeCounter: "Yellow\nSize 8"),
          MyorderItemModel(
              x: ImageConstant.imgRectangle10,
              vERTLUNEBoyfriend: "VERTLUNE\nBoyfriend Tee",
              yellowSizeCounter: "Yellow\nSize 8")
        ]))));

/// A notifier that manages the state of a MyOrder according to the event that is dispatched to it.
class MyOrderNotifier extends StateNotifier<MyOrderState> {
  MyOrderNotifier(MyOrderState state) : super(state);
}
