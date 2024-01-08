import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/payment_empty_page/models/payment_empty_model.dart';/// A provider class for the PaymentEmptyPage.
///
/// This provider manages the state of the PaymentEmptyPage, including the
/// current paymentEmptyModelObj

// ignore_for_file: must_be_immutable
class PaymentEmptyProvider extends ChangeNotifier {PaymentEmptyModel paymentEmptyModelObj = PaymentEmptyModel();

@override void dispose() { super.dispose(); } 
 }
