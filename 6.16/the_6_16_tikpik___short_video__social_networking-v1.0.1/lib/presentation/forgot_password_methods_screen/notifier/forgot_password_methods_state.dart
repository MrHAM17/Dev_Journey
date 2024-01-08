// ignore_for_file: must_be_immutable

part of 'forgot_password_methods_notifier.dart';

/// Represents the state of ForgotPasswordMethods in the application.
class ForgotPasswordMethodsState extends Equatable {
  ForgotPasswordMethodsState({this.forgotPasswordMethodsModelObj});

  ForgotPasswordMethodsModel? forgotPasswordMethodsModelObj;

  @override
  List<Object?> get props => [
        forgotPasswordMethodsModelObj,
      ];

  ForgotPasswordMethodsState copyWith(
      {ForgotPasswordMethodsModel? forgotPasswordMethodsModelObj}) {
    return ForgotPasswordMethodsState(
      forgotPasswordMethodsModelObj:
          forgotPasswordMethodsModelObj ?? this.forgotPasswordMethodsModelObj,
    );
  }
}
