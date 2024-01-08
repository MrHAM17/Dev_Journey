import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paymentmethodlist_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/payment_method_screen/models/payment_method_model.dart';
part 'payment_method_state.dart';

final paymentMethodNotifier = StateNotifierProvider<
        PaymentMethodNotifier, PaymentMethodState>(
    (ref) => PaymentMethodNotifier(PaymentMethodState(
        inputsFiedController: TextEditingController(),
        paymentMethodModelObj: PaymentMethodModel(paymentmethodlistItemList: [
          PaymentmethodlistItemModel(
              googlePay: ImageConstant.imgGoogle3, googlePay1: "Google Pay"),
          PaymentmethodlistItemModel(
              googlePay: ImageConstant.imgApple, googlePay1: "Apple Pay"),
          PaymentmethodlistItemModel(
              googlePay: ImageConstant.imgCheckmark, googlePay1: "Other")
        ]))));

/// A notifier that manages the state of a PaymentMethod according to the event that is dispatched to it.
class PaymentMethodNotifier extends StateNotifier<PaymentMethodState> {
  PaymentMethodNotifier(PaymentMethodState state) : super(state);
}
