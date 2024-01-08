import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/payment_empty_page/models/payment_empty_model.dart';part 'payment_empty_state.dart';final paymentEmptyNotifier = StateNotifierProvider<PaymentEmptyNotifier, PaymentEmptyState>((ref) => PaymentEmptyNotifier(PaymentEmptyState(paymentEmptyModelObj: PaymentEmptyModel())));
/// A notifier that manages the state of a PaymentEmpty according to the event that is dispatched to it.
class PaymentEmptyNotifier extends StateNotifier<PaymentEmptyState> {PaymentEmptyNotifier(PaymentEmptyState state) : super(state);

 }
