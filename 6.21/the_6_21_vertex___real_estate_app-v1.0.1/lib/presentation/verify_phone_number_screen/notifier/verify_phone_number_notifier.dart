import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/verify_phone_number_screen/models/verify_phone_number_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verify_phone_number_state.dart';final verifyPhoneNumberNotifier = StateNotifierProvider<VerifyPhoneNumberNotifier, VerifyPhoneNumberState>((ref) => VerifyPhoneNumberNotifier(VerifyPhoneNumberState(otpController: TextEditingController(), verifyPhoneNumberModelObj: VerifyPhoneNumberModel())));
/// A notifier that manages the state of a VerifyPhoneNumber according to the event that is dispatched to it.
class VerifyPhoneNumberNotifier extends StateNotifier<VerifyPhoneNumberState> with  CodeAutoFill {VerifyPhoneNumberNotifier(VerifyPhoneNumberState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
