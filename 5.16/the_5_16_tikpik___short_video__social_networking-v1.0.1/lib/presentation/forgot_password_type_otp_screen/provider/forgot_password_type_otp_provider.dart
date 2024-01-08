import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/forgot_password_type_otp_screen/models/forgot_password_type_otp_model.dart';/// A provider class for the ForgotPasswordTypeOtpScreen.
///
/// This provider manages the state of the ForgotPasswordTypeOtpScreen, including the
/// current forgotPasswordTypeOtpModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordTypeOtpProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

ForgotPasswordTypeOtpModel forgotPasswordTypeOtpModelObj = ForgotPasswordTypeOtpModel();

@override void dispose() { super.dispose(); } 
 }
