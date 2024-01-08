// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberme = false,
    this.signUpModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool rememberme;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        rememberme,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberme,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberme: rememberme ?? this.rememberme,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
