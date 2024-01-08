import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_20_movie_streaming/presentation/account_five_page/models/account_five_model.dart';
part 'account_five_state.dart';

final accountFiveNotifier =
    StateNotifierProvider<AccountFiveNotifier, AccountFiveState>(
  (ref) => AccountFiveNotifier(AccountFiveState(
    accountFiveModelObj: AccountFiveModel(),
  )),
);

/// A notifier that manages the state of a AccountFive according to the event that is dispatched to it.
class AccountFiveNotifier extends StateNotifier<AccountFiveState> {
  AccountFiveNotifier(AccountFiveState state) : super(state) {}
}
