import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/payment_paypal_page/models/payment_paypal_model.dart';

/// A provider class for the PaymentPaypalPage.
///
/// This provider manages the state of the PaymentPaypalPage, including the
/// current paymentPaypalModelObj
class PaymentPaypalProvider extends ChangeNotifier {
  TextEditingController lockController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  PaymentPaypalModel paymentPaypalModelObj = PaymentPaypalModel();

  @override
  void dispose() {
    super.dispose();
    lockController.dispose();
    emailController.dispose();
  }
}
