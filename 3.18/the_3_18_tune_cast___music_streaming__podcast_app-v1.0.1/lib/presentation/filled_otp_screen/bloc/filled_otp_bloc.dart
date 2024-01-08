import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/filled_otp_screen/models/filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'filled_otp_event.dart';part 'filled_otp_state.dart';/// A bloc that manages the state of a FilledOtp according to the event that is dispatched to it.
class FilledOtpBloc extends Bloc<FilledOtpEvent, FilledOtpState> with  CodeAutoFill {FilledOtpBloc(FilledOtpState initialState) : super(initialState) { on<FilledOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<FilledOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(FilledOtpInitialEvent event, Emitter<FilledOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode();NavigatorService.pushNamed(AppRoutes.createNewPasswordScreen, ); } 
 }