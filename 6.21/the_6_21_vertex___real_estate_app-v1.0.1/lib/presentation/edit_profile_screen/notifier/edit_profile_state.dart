// ignore_for_file: must_be_immutable

part of 'edit_profile_notifier.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.fullNameController,
    this.emailController,
    this.addressController,
    this.passwordController,
    this.editProfileModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? addressController;

  TextEditingController? passwordController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        addressController,
        passwordController,
        editProfileModelObj,
      ];

  EditProfileState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? addressController,
    TextEditingController? passwordController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      addressController: addressController ?? this.addressController,
      passwordController: passwordController ?? this.passwordController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
