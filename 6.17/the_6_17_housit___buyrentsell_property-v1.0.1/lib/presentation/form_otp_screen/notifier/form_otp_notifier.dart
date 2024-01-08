import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/form_otp_screen/models/form_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'form_otp_state.dart';final formOtpNotifier = StateNotifierProvider<FormOtpNotifier, FormOtpState>((ref) => FormOtpNotifier(FormOtpState(otpController: TextEditingController(), formOtpModelObj: FormOtpModel())));
/// A notifier that manages the state of a FormOtp according to the event that is dispatched to it.
class FormOtpNotifier extends StateNotifier<FormOtpState> with  CodeAutoFill {FormOtpNotifier(FormOtpState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
