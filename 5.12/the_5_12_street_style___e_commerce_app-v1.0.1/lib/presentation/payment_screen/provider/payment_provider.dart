import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/payment_screen/models/payment_model.dart';
import '../models/card_item_model.dart';

/// A provider class for the PaymentScreen.
///
/// This provider manages the state of the PaymentScreen, including the
/// current paymentModelObj

// ignore_for_file: must_be_immutable
class PaymentProvider extends ChangeNotifier {
  TextEditingController applePayController = TextEditingController();

  PaymentModel paymentModelObj = PaymentModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    applePayController.dispose();
  }
}
