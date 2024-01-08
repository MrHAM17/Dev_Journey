import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/bil_payment_success_screen/models/bil_payment_success_model.dart';

/// A provider class for the BilPaymentSuccessScreen.
///
/// This provider manages the state of the BilPaymentSuccessScreen, including the
/// current bilPaymentSuccessModelObj
class BilPaymentSuccessProvider extends ChangeNotifier {
  BilPaymentSuccessModel bilPaymentSuccessModelObj = BilPaymentSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
