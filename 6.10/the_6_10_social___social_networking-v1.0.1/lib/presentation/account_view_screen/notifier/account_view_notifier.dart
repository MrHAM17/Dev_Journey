import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/account_view_screen/models/account_view_model.dart';
part 'account_view_state.dart';

final accountViewNotifier =
    StateNotifierProvider<AccountViewNotifier, AccountViewState>((ref) =>
        AccountViewNotifier(
            AccountViewState(accountViewModelObj: AccountViewModel())));

/// A notifier that manages the state of a AccountView according to the event that is dispatched to it.
class AccountViewNotifier extends StateNotifier<AccountViewState> {
  AccountViewNotifier(AccountViewState state) : super(state);
}
