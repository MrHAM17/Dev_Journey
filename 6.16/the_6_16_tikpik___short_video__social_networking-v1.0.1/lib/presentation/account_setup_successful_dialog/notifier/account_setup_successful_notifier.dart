import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/account_setup_successful_dialog/models/account_setup_successful_model.dart';
part 'account_setup_successful_state.dart';

final accountSetupSuccessfulNotifier = StateNotifierProvider<
    AccountSetupSuccessfulNotifier, AccountSetupSuccessfulState>(
  (ref) => AccountSetupSuccessfulNotifier(AccountSetupSuccessfulState(
    accountSetupSuccessfulModelObj: AccountSetupSuccessfulModel(),
  )),
);

/// A notifier that manages the state of a AccountSetupSuccessful according to the event that is dispatched to it.
class AccountSetupSuccessfulNotifier
    extends StateNotifier<AccountSetupSuccessfulState> {
  AccountSetupSuccessfulNotifier(AccountSetupSuccessfulState state)
      : super(state) {}
}
