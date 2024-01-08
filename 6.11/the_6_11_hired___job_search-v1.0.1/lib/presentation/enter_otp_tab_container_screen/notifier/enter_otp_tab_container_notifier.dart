import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/enter_otp_tab_container_screen/models/enter_otp_tab_container_model.dart';
part 'enter_otp_tab_container_state.dart';

final enterOtpTabContainerNotifier = StateNotifierProvider<
    EnterOtpTabContainerNotifier, EnterOtpTabContainerState>(
  (ref) => EnterOtpTabContainerNotifier(EnterOtpTabContainerState(
    enterOtpTabContainerModelObj: EnterOtpTabContainerModel(),
  )),
);

/// A notifier that manages the state of a EnterOtpTabContainer according to the event that is dispatched to it.
class EnterOtpTabContainerNotifier
    extends StateNotifier<EnterOtpTabContainerState> {
  EnterOtpTabContainerNotifier(EnterOtpTabContainerState state)
      : super(state) {}
}
