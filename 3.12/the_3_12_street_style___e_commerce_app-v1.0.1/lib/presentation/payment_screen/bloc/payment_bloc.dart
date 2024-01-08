import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/card_item_model.dart';
import 'package:the_3_12_street_style___e_commerce_app/presentation/payment_screen/models/payment_model.dart';
part 'payment_event.dart';
part 'payment_state.dart';

/// A bloc that manages the state of a Payment according to the event that is dispatched to it.
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc(PaymentState initialState) : super(initialState) {
    on<PaymentInitialEvent>(_onInitialize);
  }

  List<CardItemModel> fillCardItemList() {
    return [CardItemModel(television: ImageConstant.imgTelevision)];
  }

  _onInitialize(
    PaymentInitialEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(state.copyWith(
        applePayController: TextEditingController(), sliderIndex: 0));
    emit(state.copyWith(
        paymentModelObj:
            state.paymentModelObj?.copyWith(cardItemList: fillCardItemList())));
  }
}
