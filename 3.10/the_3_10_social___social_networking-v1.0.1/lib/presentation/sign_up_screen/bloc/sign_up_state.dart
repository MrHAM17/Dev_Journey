// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.phoneController,
    this.dateOfBirthController,
    this.gender = "",
    this.signUpModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  TextEditingController? dateOfBirthController;

  SignUpModel? signUpModelObj;

  String gender;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        phoneController,
        dateOfBirthController,
        gender,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    TextEditingController? dateOfBirthController,
    String? gender,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      gender: gender ?? this.gender,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
