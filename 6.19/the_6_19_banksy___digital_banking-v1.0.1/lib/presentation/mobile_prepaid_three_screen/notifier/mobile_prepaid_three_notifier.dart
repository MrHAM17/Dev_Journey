import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/mobile_prepaid_three_screen/models/mobile_prepaid_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'mobile_prepaid_three_state.dart';

final mobilePrepaidThreeNotifier =
    StateNotifierProvider<MobilePrepaidThreeNotifier, MobilePrepaidThreeState>(
        (ref) => MobilePrepaidThreeNotifier(MobilePrepaidThreeState(
            otpController: TextEditingController(),
            mobilePrepaidThreeModelObj: MobilePrepaidThreeModel())));

/// A notifier that manages the state of a MobilePrepaidThree according to the event that is dispatched to it.
class MobilePrepaidThreeNotifier extends StateNotifier<MobilePrepaidThreeState>
    with CodeAutoFill {
  MobilePrepaidThreeNotifier(MobilePrepaidThreeState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
