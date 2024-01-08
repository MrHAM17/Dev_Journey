import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/card_item_model.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/payment_screen/models/payment_model.dart';
part 'payment_state.dart';

final paymentNotifier = StateNotifierProvider<PaymentNotifier, PaymentState>(
    (ref) => PaymentNotifier(PaymentState(
        applePayController: TextEditingController(),
        sliderIndex: 0,
        paymentModelObj: PaymentModel(cardItemList: [
          CardItemModel(television: ImageConstant.imgTelevision)
        ]))));

/// A notifier that manages the state of a Payment according to the event that is dispatched to it.
class PaymentNotifier extends StateNotifier<PaymentState> {
  PaymentNotifier(PaymentState state) : super(state);
}
