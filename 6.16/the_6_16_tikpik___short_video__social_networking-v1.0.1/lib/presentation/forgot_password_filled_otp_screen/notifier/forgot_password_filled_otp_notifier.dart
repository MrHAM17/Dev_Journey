import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/forgot_password_filled_otp_screen/models/forgot_password_filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'forgot_password_filled_otp_state.dart';final forgotPasswordFilledOtpNotifier = StateNotifierProvider<ForgotPasswordFilledOtpNotifier, ForgotPasswordFilledOtpState>((ref) => ForgotPasswordFilledOtpNotifier(ForgotPasswordFilledOtpState(otpController: TextEditingController(), forgotPasswordFilledOtpModelObj: ForgotPasswordFilledOtpModel())));
/// A notifier that manages the state of a ForgotPasswordFilledOtp according to the event that is dispatched to it.
class ForgotPasswordFilledOtpNotifier extends StateNotifier<ForgotPasswordFilledOtpState> with  CodeAutoFill {ForgotPasswordFilledOtpNotifier(ForgotPasswordFilledOtpState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
