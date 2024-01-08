import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/paymentmethod_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/payment_method_screen/models/payment_method_model.dart';part 'payment_method_state.dart';final paymentMethodNotifier = StateNotifierProvider<PaymentMethodNotifier, PaymentMethodState>((ref) => PaymentMethodNotifier(PaymentMethodState(paymentMethodModelObj: PaymentMethodModel(paymentmethodItemList: [PaymentmethodItemModel(payPal: ImageConstant.imgFrameLightBlue600, payPal1: "PayPal"), PaymentmethodItemModel(payPal: ImageConstant.imgFrameRed500, payPal1: "Google Pay")]))));
/// A notifier that manages the state of a PaymentMethod according to the event that is dispatched to it.
class PaymentMethodNotifier extends StateNotifier<PaymentMethodState> {PaymentMethodNotifier(PaymentMethodState state) : super(state);

 }
