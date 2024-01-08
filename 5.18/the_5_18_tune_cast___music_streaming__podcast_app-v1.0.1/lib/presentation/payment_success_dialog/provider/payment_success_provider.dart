import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/payment_success_dialog/models/payment_success_model.dart';

/// A provider class for the PaymentSuccessDialog.
///
/// This provider manages the state of the PaymentSuccessDialog, including the
/// current paymentSuccessModelObj
class PaymentSuccessProvider extends ChangeNotifier {
  PaymentSuccessModel paymentSuccessModelObj = PaymentSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
