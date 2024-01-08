import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/payment_method_screen/models/payment_method_model.dart';
import '../models/paymentmethodlist_item_model.dart';

/// A provider class for the PaymentMethodScreen.
///
/// This provider manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodProvider extends ChangeNotifier {
  TextEditingController inputsFiedController = TextEditingController();

  PaymentMethodModel paymentMethodModelObj = PaymentMethodModel();

  @override
  void dispose() {
    super.dispose();
    inputsFiedController.dispose();
  }
}
