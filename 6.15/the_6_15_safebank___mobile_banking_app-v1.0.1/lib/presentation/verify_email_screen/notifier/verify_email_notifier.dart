import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/verify_email_screen/models/verify_email_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verify_email_state.dart';

final verifyEmailNotifier =
    StateNotifierProvider<VerifyEmailNotifier, VerifyEmailState>((ref) =>
        VerifyEmailNotifier(VerifyEmailState(
            otpController: TextEditingController(),
            verifyEmailModelObj: VerifyEmailModel())));

/// A notifier that manages the state of a VerifyEmail according to the event that is dispatched to it.
class VerifyEmailNotifier extends StateNotifier<VerifyEmailState>
    with CodeAutoFill {
  VerifyEmailNotifier(VerifyEmailState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
