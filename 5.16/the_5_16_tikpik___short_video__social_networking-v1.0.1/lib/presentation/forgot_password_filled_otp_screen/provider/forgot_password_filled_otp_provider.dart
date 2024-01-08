import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/forgot_password_filled_otp_screen/models/forgot_password_filled_otp_model.dart';/// A provider class for the ForgotPasswordFilledOtpScreen.
///
/// This provider manages the state of the ForgotPasswordFilledOtpScreen, including the
/// current forgotPasswordFilledOtpModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordFilledOtpProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

ForgotPasswordFilledOtpModel forgotPasswordFilledOtpModelObj = ForgotPasswordFilledOtpModel();

@override void dispose() { super.dispose(); } 
 }
