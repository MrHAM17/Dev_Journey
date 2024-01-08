import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/durgs_item_model.dart';
import 'package:the_3_06_helthio___telehealth/presentation/my_cart_screen/models/my_cart_model.dart';
part 'my_cart_event.dart';
part 'my_cart_state.dart';

/// A bloc that manages the state of a MyCart according to the event that is dispatched to it.
class MyCartBloc extends Bloc<MyCartEvent, MyCartState> {
  MyCartBloc(MyCartState initialState) : super(initialState) {
    on<MyCartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyCartInitialEvent event,
    Emitter<MyCartState> emit,
  ) async {
    emit(state.copyWith(
        myCartModelObj: state.myCartModelObj
            ?.copyWith(durgsItemList: fillDurgsItemList())));
  }

  List<DurgsItemModel> fillDurgsItemList() {
    return [
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
    ];
  }
}
