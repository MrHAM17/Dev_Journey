// ignore_for_file: must_be_immutable

part of 'sign_up_blank_form_bloc.dart';

/// Represents the state of SignUpBlankForm in the application.
class SignUpBlankFormState extends Equatable {
  SignUpBlankFormState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberme = false,
    this.signUpBlankFormModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpBlankFormModel? signUpBlankFormModelObj;

  bool isShowPassword;

  bool rememberme;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        rememberme,
        signUpBlankFormModelObj,
      ];
  SignUpBlankFormState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberme,
    SignUpBlankFormModel? signUpBlankFormModelObj,
  }) {
    return SignUpBlankFormState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberme: rememberme ?? this.rememberme,
      signUpBlankFormModelObj:
          signUpBlankFormModelObj ?? this.signUpBlankFormModelObj,
    );
  }
}
