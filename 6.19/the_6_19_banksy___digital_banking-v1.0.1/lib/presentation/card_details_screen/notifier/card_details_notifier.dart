import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/carddetails_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/card_details_screen/models/card_details_model.dart';
part 'card_details_state.dart';

final cardDetailsNotifier =
    StateNotifierProvider<CardDetailsNotifier, CardDetailsState>(
  (ref) => CardDetailsNotifier(CardDetailsState(
    cardDetailsModelObj: CardDetailsModel(carddetailsItemList: [
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
    ]),
  )),
);

/// A notifier that manages the state of a CardDetails according to the event that is dispatched to it.
class CardDetailsNotifier extends StateNotifier<CardDetailsState> {
  CardDetailsNotifier(CardDetailsState state) : super(state) {}
}
