// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.labelController,
    this.labelController1,
    this.dateController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedCountry,
    this.editProfileModelObj,
  });

  TextEditingController? labelController;

  TextEditingController? labelController1;

  TextEditingController? dateController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  EditProfileModel? editProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        labelController,
        labelController1,
        dateController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedCountry,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? labelController,
    TextEditingController? labelController1,
    TextEditingController? dateController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    Country? selectedCountry,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      labelController: labelController ?? this.labelController,
      labelController1: labelController1 ?? this.labelController1,
      dateController: dateController ?? this.dateController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
