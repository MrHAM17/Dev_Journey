import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/payment_method_screen/models/payment_method_model.dart';/// A provider class for the PaymentMethodScreen.
///
/// This provider manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodProvider extends ChangeNotifier {PaymentMethodModel paymentMethodModelObj = PaymentMethodModel();

@override void dispose() { super.dispose(); } 
 }
