import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/choose_payment_method_screen/models/choose_payment_method_model.dart';import '../models/choosepaymentmethod_item_model.dart';/// A provider class for the ChoosePaymentMethodScreen.
///
/// This provider manages the state of the ChoosePaymentMethodScreen, including the
/// current choosePaymentMethodModelObj

// ignore_for_file: must_be_immutable
class ChoosePaymentMethodProvider extends ChangeNotifier {ChoosePaymentMethodModel choosePaymentMethodModelObj = ChoosePaymentMethodModel();

@override void dispose() { super.dispose(); } 
 }
