// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.nameController,
    this.emailController,
    this.checkmarkController,
    this.passwordController,
    this.confirmpasswordController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? checkmarkController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        checkmarkController,
        passwordController,
        confirmpasswordController,
        selectedDropDownValue,
        selectedDropDownValue1,
        isShowPassword,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? checkmarkController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      checkmarkController: checkmarkController ?? this.checkmarkController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
