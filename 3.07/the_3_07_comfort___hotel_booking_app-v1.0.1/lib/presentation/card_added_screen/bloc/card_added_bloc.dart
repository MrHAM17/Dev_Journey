import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/cardadded_item_model.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/card_added_screen/models/card_added_model.dart';part 'card_added_event.dart';part 'card_added_state.dart';/// A bloc that manages the state of a CardAdded according to the event that is dispatched to it.
class CardAddedBloc extends Bloc<CardAddedEvent, CardAddedState> {CardAddedBloc(CardAddedState initialState) : super(initialState) { on<CardAddedInitialEvent>(_onInitialize); }

_onInitialize(CardAddedInitialEvent event, Emitter<CardAddedState> emit, ) async  { emit(state.copyWith(cardAddedModelObj: state.cardAddedModelObj?.copyWith(cardaddedItemList: fillCardaddedItemList())));NavigatorService.pushNamed(AppRoutes.confirmPaymentScreen, ); } 
List<CardaddedItemModel> fillCardaddedItemList() { return [CardaddedItemModel(paypal: ImageConstant.imgFrameLightBlue600, paypal1: "Paypal"), CardaddedItemModel(paypal: ImageConstant.imgFrame, paypal1: "Google Pay"), CardaddedItemModel(paypal: ImageConstant.imgFrameWhiteA70032x32, paypal1: "Apple Pay")]; } 
 }
