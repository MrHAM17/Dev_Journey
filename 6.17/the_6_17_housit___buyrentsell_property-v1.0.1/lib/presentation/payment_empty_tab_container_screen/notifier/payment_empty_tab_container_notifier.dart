import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/payment_empty_tab_container_screen/models/payment_empty_tab_container_model.dart';part 'payment_empty_tab_container_state.dart';final paymentEmptyTabContainerNotifier = StateNotifierProvider<PaymentEmptyTabContainerNotifier, PaymentEmptyTabContainerState>((ref) => PaymentEmptyTabContainerNotifier(PaymentEmptyTabContainerState(paymentEmptyTabContainerModelObj: PaymentEmptyTabContainerModel())));
/// A notifier that manages the state of a PaymentEmptyTabContainer according to the event that is dispatched to it.
class PaymentEmptyTabContainerNotifier extends StateNotifier<PaymentEmptyTabContainerState> {PaymentEmptyTabContainerNotifier(PaymentEmptyTabContainerState state) : super(state);

 }
