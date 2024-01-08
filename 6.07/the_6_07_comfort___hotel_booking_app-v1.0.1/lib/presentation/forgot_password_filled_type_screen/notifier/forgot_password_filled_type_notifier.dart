import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/forgot_password_filled_type_screen/models/forgot_password_filled_type_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'forgot_password_filled_type_state.dart';final forgotPasswordFilledTypeNotifier = StateNotifierProvider<ForgotPasswordFilledTypeNotifier, ForgotPasswordFilledTypeState>((ref) => ForgotPasswordFilledTypeNotifier(ForgotPasswordFilledTypeState(otpController: TextEditingController(), forgotPasswordFilledTypeModelObj: ForgotPasswordFilledTypeModel())));
/// A notifier that manages the state of a ForgotPasswordFilledType according to the event that is dispatched to it.
class ForgotPasswordFilledTypeNotifier extends StateNotifier<ForgotPasswordFilledTypeState> with  CodeAutoFill {ForgotPasswordFilledTypeNotifier(ForgotPasswordFilledTypeState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
