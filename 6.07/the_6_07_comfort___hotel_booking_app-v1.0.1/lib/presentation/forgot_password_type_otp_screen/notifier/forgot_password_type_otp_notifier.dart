import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/forgot_password_type_otp_screen/models/forgot_password_type_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'forgot_password_type_otp_state.dart';final forgotPasswordTypeOtpNotifier = StateNotifierProvider<ForgotPasswordTypeOtpNotifier, ForgotPasswordTypeOtpState>((ref) => ForgotPasswordTypeOtpNotifier(ForgotPasswordTypeOtpState(otpController: TextEditingController(), forgotPasswordTypeOtpModelObj: ForgotPasswordTypeOtpModel())));
/// A notifier that manages the state of a ForgotPasswordTypeOtp according to the event that is dispatched to it.
class ForgotPasswordTypeOtpNotifier extends StateNotifier<ForgotPasswordTypeOtpState> with  CodeAutoFill {ForgotPasswordTypeOtpNotifier(ForgotPasswordTypeOtpState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
