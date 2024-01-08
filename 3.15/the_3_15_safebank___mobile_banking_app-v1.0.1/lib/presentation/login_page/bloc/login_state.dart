// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberme = false,
    this.loginModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  bool rememberme;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        rememberme,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberme,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberme: rememberme ?? this.rememberme,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
