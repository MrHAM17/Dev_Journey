import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/payment_screen/models/payment_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  TextEditingController applePayController = TextEditingController();

  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    applePayController.dispose();
  }
}
