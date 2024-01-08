import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/payment_paypal_page/models/payment_paypal_model.dart';
part 'payment_paypal_state.dart';

final paymentPaypalNotifier =
    StateNotifierProvider<PaymentPaypalNotifier, PaymentPaypalState>(
  (ref) => PaymentPaypalNotifier(PaymentPaypalState(
    lockController: TextEditingController(),
    emailController: TextEditingController(),
    paymentPaypalModelObj: PaymentPaypalModel(),
  )),
);

/// A notifier that manages the state of a PaymentPaypal according to the event that is dispatched to it.
class PaymentPaypalNotifier extends StateNotifier<PaymentPaypalState> {
  PaymentPaypalNotifier(PaymentPaypalState state) : super(state) {}
}
