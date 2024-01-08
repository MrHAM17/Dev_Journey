// ignore_for_file: must_be_immutable

part of 'reset_password_success_bloc.dart';

/// Represents the state of ResetPasswordSuccess in the application.
class ResetPasswordSuccessState extends Equatable {
  ResetPasswordSuccessState({this.resetPasswordSuccessModelObj});

  ResetPasswordSuccessModel? resetPasswordSuccessModelObj;

  @override
  List<Object?> get props => [
        resetPasswordSuccessModelObj,
      ];
  ResetPasswordSuccessState copyWith(
      {ResetPasswordSuccessModel? resetPasswordSuccessModelObj}) {
    return ResetPasswordSuccessState(
      resetPasswordSuccessModelObj:
          resetPasswordSuccessModelObj ?? this.resetPasswordSuccessModelObj,
    );
  }
}
