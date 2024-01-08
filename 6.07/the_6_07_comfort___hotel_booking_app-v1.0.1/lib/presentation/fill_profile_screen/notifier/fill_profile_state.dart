// ignore_for_file: must_be_immutable

part of 'fill_profile_notifier.dart';

/// Represents the state of FillProfile in the application.
class FillProfileState extends Equatable {
  FillProfileState({
    this.fullNameController,
    this.nameController,
    this.dateOfBirthController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.fillProfileModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  FillProfileModel? fillProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        fullNameController,
        nameController,
        dateOfBirthController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        selectedCountry,
        fillProfileModelObj,
      ];

  FillProfileState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    FillProfileModel? fillProfileModelObj,
  }) {
    return FillProfileState(
      fullNameController: fullNameController ?? this.fullNameController,
      nameController: nameController ?? this.nameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      fillProfileModelObj: fillProfileModelObj ?? this.fillProfileModelObj,
    );
  }
}
