import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/forgot_password_filled_otp_screen/models/forgot_password_filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the ForgotPasswordFilledOtpScreen.
///
/// This class manages the state of the ForgotPasswordFilledOtpScreen, including the
/// current forgotPasswordFilledOtpModelObj
class ForgotPasswordFilledOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordFilledOtpModel> forgotPasswordFilledOtpModelObj = ForgotPasswordFilledOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
