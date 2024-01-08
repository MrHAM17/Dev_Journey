import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/payment_success_screen/models/payment_success_model.dart';

/// A provider class for the PaymentSuccessScreen.
///
/// This provider manages the state of the PaymentSuccessScreen, including the
/// current paymentSuccessModelObj
class PaymentSuccessProvider extends ChangeNotifier {
  PaymentSuccessModel paymentSuccessModelObj = PaymentSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
