import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/forgot_password_filled_otp_screen/models/forgot_password_filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'forgot_password_filled_otp_event.dart';part 'forgot_password_filled_otp_state.dart';/// A bloc that manages the state of a ForgotPasswordFilledOtp according to the event that is dispatched to it.
class ForgotPasswordFilledOtpBloc extends Bloc<ForgotPasswordFilledOtpEvent, ForgotPasswordFilledOtpState> with  CodeAutoFill {ForgotPasswordFilledOtpBloc(ForgotPasswordFilledOtpState initialState) : super(initialState) { on<ForgotPasswordFilledOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ForgotPasswordFilledOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(ForgotPasswordFilledOtpInitialEvent event, Emitter<ForgotPasswordFilledOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
