// ignore_for_file: must_be_immutable

part of 'reset_password_successful_notifier.dart';

/// Represents the state of ResetPasswordSuccessful in the application.
class ResetPasswordSuccessfulState extends Equatable {
  ResetPasswordSuccessfulState({this.resetPasswordSuccessfulModelObj});

  ResetPasswordSuccessfulModel? resetPasswordSuccessfulModelObj;

  @override
  List<Object?> get props => [
        resetPasswordSuccessfulModelObj,
      ];

  ResetPasswordSuccessfulState copyWith(
      {ResetPasswordSuccessfulModel? resetPasswordSuccessfulModelObj}) {
    return ResetPasswordSuccessfulState(
      resetPasswordSuccessfulModelObj: resetPasswordSuccessfulModelObj ??
          this.resetPasswordSuccessfulModelObj,
    );
  }
}
