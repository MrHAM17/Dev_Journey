// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.inputFieldsController,
    this.inputFieldsController1,
    this.dateController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.editProfileModelObj,
  });

  TextEditingController? inputFieldsController;

  TextEditingController? inputFieldsController1;

  TextEditingController? dateController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  EditProfileModel? editProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        inputFieldsController,
        inputFieldsController1,
        dateController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        selectedCountry,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? inputFieldsController,
    TextEditingController? inputFieldsController1,
    TextEditingController? dateController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      inputFieldsController:
          inputFieldsController ?? this.inputFieldsController,
      inputFieldsController1:
          inputFieldsController1 ?? this.inputFieldsController1,
      dateController: dateController ?? this.dateController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
