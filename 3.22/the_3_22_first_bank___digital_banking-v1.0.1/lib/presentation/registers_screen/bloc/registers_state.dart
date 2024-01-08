// ignore_for_file: must_be_immutable

part of 'registers_bloc.dart';

/// Represents the state of Registers in the application.
class RegistersState extends Equatable {
  RegistersState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.registersModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  RegistersModel? registersModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        passwordController,
        isShowPassword,
        registersModelObj,
      ];
  RegistersState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    RegistersModel? registersModelObj,
  }) {
    return RegistersState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      registersModelObj: registersModelObj ?? this.registersModelObj,
    );
  }
}
