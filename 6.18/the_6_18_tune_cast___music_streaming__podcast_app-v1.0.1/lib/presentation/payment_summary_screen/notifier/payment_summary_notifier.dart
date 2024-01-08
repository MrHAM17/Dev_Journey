import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/payment_summary_screen/models/payment_summary_model.dart';part 'payment_summary_state.dart';final paymentSummaryNotifier = StateNotifierProvider<PaymentSummaryNotifier, PaymentSummaryState>((ref) => PaymentSummaryNotifier(PaymentSummaryState(paymentSummaryModelObj: PaymentSummaryModel())));
/// A notifier that manages the state of a PaymentSummary according to the event that is dispatched to it.
class PaymentSummaryNotifier extends StateNotifier<PaymentSummaryState> {PaymentSummaryNotifier(PaymentSummaryState state) : super(state);

 }
