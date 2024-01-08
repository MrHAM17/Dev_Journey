import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/confirm_payment_screen/models/confirm_payment_model.dart';/// A provider class for the ConfirmPaymentScreen.
///
/// This provider manages the state of the ConfirmPaymentScreen, including the
/// current confirmPaymentModelObj

// ignore_for_file: must_be_immutable
class ConfirmPaymentProvider extends ChangeNotifier {ConfirmPaymentModel confirmPaymentModelObj = ConfirmPaymentModel();

@override void dispose() { super.dispose(); } 
 }
