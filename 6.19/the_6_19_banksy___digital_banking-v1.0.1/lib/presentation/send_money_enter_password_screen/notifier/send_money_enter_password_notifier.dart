import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/send_money_enter_password_screen/models/send_money_enter_password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'send_money_enter_password_state.dart';

final sendMoneyEnterPasswordNotifier = StateNotifierProvider<
        SendMoneyEnterPasswordNotifier, SendMoneyEnterPasswordState>(
    (ref) => SendMoneyEnterPasswordNotifier(SendMoneyEnterPasswordState(
        otpController: TextEditingController(),
        sendMoneyEnterPasswordModelObj: SendMoneyEnterPasswordModel())));

/// A notifier that manages the state of a SendMoneyEnterPassword according to the event that is dispatched to it.
class SendMoneyEnterPasswordNotifier
    extends StateNotifier<SendMoneyEnterPasswordState> with CodeAutoFill {
  SendMoneyEnterPasswordNotifier(SendMoneyEnterPasswordState state)
      : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
