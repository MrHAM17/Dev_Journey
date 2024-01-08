import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/myorder_item_model.dart';
import 'package:the_3_12_street_style___e_commerce_app/presentation/my_order_screen/models/my_order_model.dart';
part 'my_order_event.dart';
part 'my_order_state.dart';

/// A bloc that manages the state of a MyOrder according to the event that is dispatched to it.
class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {
  MyOrderBloc(MyOrderState initialState) : super(initialState) {
    on<MyOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrderInitialEvent event,
    Emitter<MyOrderState> emit,
  ) async {
    emit(state.copyWith(
        myOrderModelObj: state.myOrderModelObj
            ?.copyWith(myorderItemList: fillMyorderItemList())));
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }

  List<MyorderItemModel> fillMyorderItemList() {
    return [
      MyorderItemModel(
          x: ImageConstant.imgRectangle9237x175,
          vERTLUNEBoyfriend: "VERTLUNE\nBoyfriend Tee",
          yellowSizeCounter: "Yellow\nSize 8"),
      MyorderItemModel(
          x: ImageConstant.imgRectangle10,
          vERTLUNEBoyfriend: "VERTLUNE\nBoyfriend Tee",
          yellowSizeCounter: "Yellow\nSize 8")
    ];
  }
}