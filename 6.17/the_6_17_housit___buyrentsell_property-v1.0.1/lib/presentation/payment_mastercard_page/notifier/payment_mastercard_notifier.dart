import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/payment_mastercard_page/models/payment_mastercard_model.dart';part 'payment_mastercard_state.dart';final paymentMastercardNotifier = StateNotifierProvider<PaymentMastercardNotifier, PaymentMastercardState>((ref) => PaymentMastercardNotifier(PaymentMastercardState(lockController: TextEditingController(), cvvController: TextEditingController(), paymentMastercardModelObj: PaymentMastercardModel())));
/// A notifier that manages the state of a PaymentMastercard according to the event that is dispatched to it.
class PaymentMastercardNotifier extends StateNotifier<PaymentMastercardState> {PaymentMastercardNotifier(PaymentMastercardState state) : super(state);

 }
