// ignore_for_file: must_be_immutable

part of 'account_setup_successful_bloc.dart';

/// Represents the state of AccountSetupSuccessful in the application.
class AccountSetupSuccessfulState extends Equatable {
  AccountSetupSuccessfulState({this.accountSetupSuccessfulModelObj});

  AccountSetupSuccessfulModel? accountSetupSuccessfulModelObj;

  @override
  List<Object?> get props => [
        accountSetupSuccessfulModelObj,
      ];
  AccountSetupSuccessfulState copyWith(
      {AccountSetupSuccessfulModel? accountSetupSuccessfulModelObj}) {
    return AccountSetupSuccessfulState(
      accountSetupSuccessfulModelObj:
          accountSetupSuccessfulModelObj ?? this.accountSetupSuccessfulModelObj,
    );
  }
}
