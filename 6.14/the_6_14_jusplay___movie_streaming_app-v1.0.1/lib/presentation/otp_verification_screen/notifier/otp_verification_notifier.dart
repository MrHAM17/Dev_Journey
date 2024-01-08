import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/otp_verification_screen/models/otp_verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_verification_state.dart';

final otpVerificationNotifier =
    StateNotifierProvider<OtpVerificationNotifier, OtpVerificationState>(
        (ref) => OtpVerificationNotifier(OtpVerificationState(
            otpController: TextEditingController(),
            otpVerificationModelObj: OtpVerificationModel())));

/// A notifier that manages the state of a OtpVerification according to the event that is dispatched to it.
class OtpVerificationNotifier extends StateNotifier<OtpVerificationState>
    with CodeAutoFill {
  OtpVerificationNotifier(OtpVerificationState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
