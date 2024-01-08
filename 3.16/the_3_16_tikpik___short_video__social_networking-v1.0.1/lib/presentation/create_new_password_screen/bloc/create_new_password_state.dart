// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

/// Represents the state of CreateNewPassword in the application.
class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.newpasswordController,
    this.newpasswordController1,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createNewPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordController1;

  CreateNewPasswordModel? createNewPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newpasswordController,
        newpasswordController1,
        isShowPassword,
        isShowPassword1,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordController1,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordController1:
          newpasswordController1 ?? this.newpasswordController1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
