import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/carddetails_item_model.dart';
import 'package:the_3_19_banksy___digital_banking/presentation/card_details_screen/models/card_details_model.dart';
part 'card_details_event.dart';
part 'card_details_state.dart';

/// A bloc that manages the state of a CardDetails according to the event that is dispatched to it.
class CardDetailsBloc extends Bloc<CardDetailsEvent, CardDetailsState> {
  CardDetailsBloc(CardDetailsState initialState) : super(initialState) {
    on<CardDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CardDetailsInitialEvent event,
    Emitter<CardDetailsState> emit,
  ) async {
    emit(state.copyWith(
        cardDetailsModelObj: state.cardDetailsModelObj?.copyWith(
      carddetailsItemList: fillCarddetailsItemList(),
    )));
  }

  List<CarddetailsItemModel> fillCarddetailsItemList() {
    return [
      CarddetailsItemModel(
          cart: ImageConstant.imgCart,
          shopping: "Shopping",
          time: "3:41 pm",
          price: "-50.35"),
      CarddetailsItemModel(
          cart: ImageConstant.imgMdiFood,
          shopping: "Food",
          time: "1:41 pm",
          price: "-10.00"),
      CarddetailsItemModel(
          cart: ImageConstant.imgLinkedin,
          shopping: "Taxi",
          time: "10:00 am",
          price: "-15.00"),
      CarddetailsItemModel(shopping: "Mahi", time: "6:46 pm", price: "+30.00"),
      CarddetailsItemModel(shopping: "Adom", time: "6:46 pm", price: "+30.00")
    ];
  }
}
