// ignore_for_file: must_be_immutable

part of 'logout_modal_bloc.dart';

/// Represents the state of LogoutModal in the application.
class LogoutModalState extends Equatable {
  LogoutModalState({this.logoutModalModelObj});

  LogoutModalModel? logoutModalModelObj;

  @override
  List<Object?> get props => [
        logoutModalModelObj,
      ];
  LogoutModalState copyWith({LogoutModalModel? logoutModalModelObj}) {
    return LogoutModalState(
      logoutModalModelObj: logoutModalModelObj ?? this.logoutModalModelObj,
    );
  }
}
