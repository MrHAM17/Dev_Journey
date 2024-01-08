import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/payment_mastercard_page/models/payment_mastercard_model.dart';/// A provider class for the PaymentMastercardPage.
///
/// This provider manages the state of the PaymentMastercardPage, including the
/// current paymentMastercardModelObj

// ignore_for_file: must_be_immutable
class PaymentMastercardProvider extends ChangeNotifier {TextEditingController lockController = TextEditingController();

TextEditingController cvvController = TextEditingController();

PaymentMastercardModel paymentMastercardModelObj = PaymentMastercardModel();

@override void dispose() { super.dispose(); lockController.dispose(); cvvController.dispose(); } 
 }
