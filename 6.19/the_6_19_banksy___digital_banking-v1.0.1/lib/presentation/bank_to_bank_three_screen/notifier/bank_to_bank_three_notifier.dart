import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/bank_to_bank_three_screen/models/bank_to_bank_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'bank_to_bank_three_state.dart';

final bankToBankThreeNotifier =
    StateNotifierProvider<BankToBankThreeNotifier, BankToBankThreeState>(
        (ref) => BankToBankThreeNotifier(BankToBankThreeState(
            otpController: TextEditingController(),
            bankToBankThreeModelObj: BankToBankThreeModel())));

/// A notifier that manages the state of a BankToBankThree according to the event that is dispatched to it.
class BankToBankThreeNotifier extends StateNotifier<BankToBankThreeState>
    with CodeAutoFill {
  BankToBankThreeNotifier(BankToBankThreeState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
