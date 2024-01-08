import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/checkout_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/checkout_screen/models/checkout_model.dart';
part 'checkout_state.dart';

final checkoutNotifier = StateNotifierProvider<CheckoutNotifier, CheckoutState>(
    (ref) => CheckoutNotifier(CheckoutState(
            checkoutModelObj: CheckoutModel(checkoutItemList: [
          CheckoutItemModel(
              creditCard: ImageConstant.imgUser, creditCard1: "Credit Card"),
          CheckoutItemModel(
              creditCard: ImageConstant.imgFlatcoloriconsgoogle,
              creditCard1: "Google Pay"),
          CheckoutItemModel(
              creditCard: ImageConstant.imgUimapple, creditCard1: "Apple Pay"),
          CheckoutItemModel(
              creditCard: ImageConstant.imgTelevision, creditCard1: "Paypal")
        ]))));

/// A notifier that manages the state of a Checkout according to the event that is dispatched to it.
class CheckoutNotifier extends StateNotifier<CheckoutState> {
  CheckoutNotifier(CheckoutState state) : super(state);
}
