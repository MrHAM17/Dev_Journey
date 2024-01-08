import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/confirm_payment_screen/models/confirm_payment_model.dart';part 'confirm_payment_state.dart';final confirmPaymentNotifier = StateNotifierProvider<ConfirmPaymentNotifier, ConfirmPaymentState>((ref) => ConfirmPaymentNotifier(ConfirmPaymentState(confirmPaymentModelObj: ConfirmPaymentModel())));
/// A notifier that manages the state of a ConfirmPayment according to the event that is dispatched to it.
class ConfirmPaymentNotifier extends StateNotifier<ConfirmPaymentState> {ConfirmPaymentNotifier(ConfirmPaymentState state) : super(state);

 }
