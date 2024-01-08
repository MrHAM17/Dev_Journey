// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        isShowPassword,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
