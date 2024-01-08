// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.nameController,
    this.userNameController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.editProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? userNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        userNameController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? userNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      nameController: nameController ?? this.nameController,
      userNameController: userNameController ?? this.userNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
