// ignore_for_file: must_be_immutable

part of 'manage_accounts_notifier.dart';

/// Represents the state of ManageAccounts in the application.
class ManageAccountsState extends Equatable {
  ManageAccountsState({this.manageAccountsModelObj});

  ManageAccountsModel? manageAccountsModelObj;

  @override
  List<Object?> get props => [
        manageAccountsModelObj,
      ];

  ManageAccountsState copyWith({ManageAccountsModel? manageAccountsModelObj}) {
    return ManageAccountsState(
      manageAccountsModelObj:
          manageAccountsModelObj ?? this.manageAccountsModelObj,
    );
  }
}
