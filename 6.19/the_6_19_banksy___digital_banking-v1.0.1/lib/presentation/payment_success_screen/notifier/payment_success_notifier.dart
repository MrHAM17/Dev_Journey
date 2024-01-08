import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/payment_success_screen/models/payment_success_model.dart';
part 'payment_success_state.dart';

final paymentSuccessNotifier =
    StateNotifierProvider<PaymentSuccessNotifier, PaymentSuccessState>(
  (ref) => PaymentSuccessNotifier(PaymentSuccessState(
    paymentSuccessModelObj: PaymentSuccessModel(),
  )),
);

/// A notifier that manages the state of a PaymentSuccess according to the event that is dispatched to it.
class PaymentSuccessNotifier extends StateNotifier<PaymentSuccessState> {
  PaymentSuccessNotifier(PaymentSuccessState state) : super(state) {}
}
