import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/account_setup_successful_dialog/models/account_setup_successful_model.dart';
part 'account_setup_successful_event.dart';
part 'account_setup_successful_state.dart';

/// A bloc that manages the state of a AccountSetupSuccessful according to the event that is dispatched to it.
class AccountSetupSuccessfulBloc
    extends Bloc<AccountSetupSuccessfulEvent, AccountSetupSuccessfulState> {
  AccountSetupSuccessfulBloc(AccountSetupSuccessfulState initialState)
      : super(initialState) {
    on<AccountSetupSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountSetupSuccessfulInitialEvent event,
    Emitter<AccountSetupSuccessfulState> emit,
  ) async {}
}
