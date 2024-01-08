// ignore_for_file: must_be_immutable

part of 'sign_in_blank_form_notifier.dart';

/// Represents the state of SignInBlankForm in the application.
class SignInBlankFormState extends Equatable {
  SignInBlankFormState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberme = false,
    this.signInBlankFormModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInBlankFormModel? signInBlankFormModelObj;

  bool isShowPassword;

  bool rememberme;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        rememberme,
        signInBlankFormModelObj,
      ];

  SignInBlankFormState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberme,
    SignInBlankFormModel? signInBlankFormModelObj,
  }) {
    return SignInBlankFormState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberme: rememberme ?? this.rememberme,
      signInBlankFormModelObj:
          signInBlankFormModelObj ?? this.signInBlankFormModelObj,
    );
  }
}
