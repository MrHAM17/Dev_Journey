import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/enter_otp_page/models/enter_otp_model.dart';
part 'enter_otp_state.dart';

final enterOtpNotifier = StateNotifierProvider<EnterOtpNotifier, EnterOtpState>(
    (ref) =>
        EnterOtpNotifier(EnterOtpState(enterOtpModelObj: EnterOtpModel())));

/// A notifier that manages the state of a EnterOtp according to the event that is dispatched to it.
class EnterOtpNotifier extends StateNotifier<EnterOtpState> {
  EnterOtpNotifier(EnterOtpState state) : super(state);
}
