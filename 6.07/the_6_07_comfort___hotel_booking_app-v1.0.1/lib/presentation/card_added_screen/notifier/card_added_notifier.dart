import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/cardadded_item_model.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/card_added_screen/models/card_added_model.dart';part 'card_added_state.dart';final cardAddedNotifier = StateNotifierProvider<CardAddedNotifier, CardAddedState>((ref) => CardAddedNotifier(CardAddedState(cardAddedModelObj: CardAddedModel(cardaddedItemList: [CardaddedItemModel(paypal: ImageConstant.imgFrameLightBlue600, paypal1: "Paypal"), CardaddedItemModel(paypal: ImageConstant.imgFrame, paypal1: "Google Pay"), CardaddedItemModel(paypal: ImageConstant.imgFrameWhiteA70032x32, paypal1: "Apple Pay")]))));
/// A notifier that manages the state of a CardAdded according to the event that is dispatched to it.
class CardAddedNotifier extends StateNotifier<CardAddedState> {CardAddedNotifier(CardAddedState state) : super(state);

 }
