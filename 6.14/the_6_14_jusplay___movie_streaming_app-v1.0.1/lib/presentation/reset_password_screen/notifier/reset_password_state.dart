// ignore_for_file: must_be_immutable

part of 'reset_password_notifier.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.passwordController,
    this.newpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.resetPasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  ResetPasswordModel? resetPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        isShowPassword,
        isShowPassword1,
        resetPasswordModelObj,
      ];

  ResetPasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
