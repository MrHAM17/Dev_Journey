import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/reset_password_verify_code_screen/models/reset_password_verify_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'reset_password_verify_code_state.dart';

final resetPasswordVerifyCodeNotifier = StateNotifierProvider<
        ResetPasswordVerifyCodeNotifier, ResetPasswordVerifyCodeState>(
    (ref) => ResetPasswordVerifyCodeNotifier(ResetPasswordVerifyCodeState(
        otpController: TextEditingController(),
        resetPasswordVerifyCodeModelObj: ResetPasswordVerifyCodeModel())));

/// A notifier that manages the state of a ResetPasswordVerifyCode according to the event that is dispatched to it.
class ResetPasswordVerifyCodeNotifier
    extends StateNotifier<ResetPasswordVerifyCodeState> with CodeAutoFill {
  ResetPasswordVerifyCodeNotifier(ResetPasswordVerifyCodeState state)
      : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
