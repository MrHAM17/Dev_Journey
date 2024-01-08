import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/filled_otp_screen/models/filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'filled_otp_state.dart';final filledOtpNotifier = StateNotifierProvider<FilledOtpNotifier, FilledOtpState>((ref) => FilledOtpNotifier(FilledOtpState(otpController: TextEditingController(), filledOtpModelObj: FilledOtpModel())));
/// A notifier that manages the state of a FilledOtp according to the event that is dispatched to it.
class FilledOtpNotifier extends StateNotifier<FilledOtpState> with  CodeAutoFill {FilledOtpNotifier(FilledOtpState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
