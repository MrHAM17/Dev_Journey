import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/payment_method_screen/models/payment_method_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {
  TextEditingController inputsFiedController = TextEditingController();

  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

  @override
  void onClose() {
    super.onClose();
    inputsFiedController.dispose();
  }
}
