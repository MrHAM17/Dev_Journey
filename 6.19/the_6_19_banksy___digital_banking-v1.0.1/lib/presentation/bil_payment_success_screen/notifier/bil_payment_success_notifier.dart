import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/bil_payment_success_screen/models/bil_payment_success_model.dart';
part 'bil_payment_success_state.dart';

final bilPaymentSuccessNotifier =
    StateNotifierProvider<BilPaymentSuccessNotifier, BilPaymentSuccessState>(
  (ref) => BilPaymentSuccessNotifier(BilPaymentSuccessState(
    bilPaymentSuccessModelObj: BilPaymentSuccessModel(),
  )),
);

/// A notifier that manages the state of a BilPaymentSuccess according to the event that is dispatched to it.
class BilPaymentSuccessNotifier extends StateNotifier<BilPaymentSuccessState> {
  BilPaymentSuccessNotifier(BilPaymentSuccessState state) : super(state) {}
}
