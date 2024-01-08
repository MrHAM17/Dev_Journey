import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/forgot_password_screen/models/forgot_password_model.dart';import '../models/forgotpassword_item_model.dart';/// A provider class for the ForgotPasswordScreen.
///
/// This provider manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordProvider extends ChangeNotifier {ForgotPasswordModel forgotPasswordModelObj = ForgotPasswordModel();

@override void dispose() { super.dispose(); } 
 }
