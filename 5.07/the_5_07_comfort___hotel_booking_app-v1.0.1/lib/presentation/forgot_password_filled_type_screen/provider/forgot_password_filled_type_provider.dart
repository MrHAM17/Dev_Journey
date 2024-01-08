import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/forgot_password_filled_type_screen/models/forgot_password_filled_type_model.dart';/// A provider class for the ForgotPasswordFilledTypeScreen.
///
/// This provider manages the state of the ForgotPasswordFilledTypeScreen, including the
/// current forgotPasswordFilledTypeModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordFilledTypeProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

ForgotPasswordFilledTypeModel forgotPasswordFilledTypeModelObj = ForgotPasswordFilledTypeModel();

@override void dispose() { super.dispose(); } 
 }
