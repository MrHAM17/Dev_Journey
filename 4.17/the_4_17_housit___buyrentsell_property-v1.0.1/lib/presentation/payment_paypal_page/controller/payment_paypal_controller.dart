import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/presentation/payment_paypal_page/models/payment_paypal_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentPaypalPage.
///
/// This class manages the state of the PaymentPaypalPage, including the
/// current paymentPaypalModelObj
class PaymentPaypalController extends GetxController {
  PaymentPaypalController(this.paymentPaypalModelObj);

  TextEditingController lockController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<PaymentPaypalModel> paymentPaypalModelObj;

  @override
  void onClose() {
    super.onClose();
    lockController.dispose();
    emailController.dispose();
  }
}
