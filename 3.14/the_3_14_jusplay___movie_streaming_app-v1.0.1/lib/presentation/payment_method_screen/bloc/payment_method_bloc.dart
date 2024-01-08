import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paymentmethodlist_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/payment_method_screen/models/payment_method_model.dart';
part 'payment_method_event.dart';
part 'payment_method_state.dart';

/// A bloc that manages the state of a PaymentMethod according to the event that is dispatched to it.
class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  PaymentMethodBloc(PaymentMethodState initialState) : super(initialState) {
    on<PaymentMethodInitialEvent>(_onInitialize);
  }

  List<PaymentmethodlistItemModel> fillPaymentmethodlistItemList() {
    return [
      PaymentmethodlistItemModel(
          googlePay: ImageConstant.imgGoogle3, googlePay1: "Google Pay"),
      PaymentmethodlistItemModel(
          googlePay: ImageConstant.imgApple, googlePay1: "Apple Pay"),
      PaymentmethodlistItemModel(
          googlePay: ImageConstant.imgCheckmark, googlePay1: "Other")
    ];
  }

  _onInitialize(
    PaymentMethodInitialEvent event,
    Emitter<PaymentMethodState> emit,
  ) async {
    emit(state.copyWith(inputsFiedController: TextEditingController()));
    emit(state.copyWith(
        paymentMethodModelObj: state.paymentMethodModelObj?.copyWith(
            paymentmethodlistItemList: fillPaymentmethodlistItemList())));
  }
}
