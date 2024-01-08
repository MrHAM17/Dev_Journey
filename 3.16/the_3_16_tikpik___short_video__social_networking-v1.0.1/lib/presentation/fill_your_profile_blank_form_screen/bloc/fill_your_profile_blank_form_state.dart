// ignore_for_file: must_be_immutable

part of 'fill_your_profile_blank_form_bloc.dart';

/// Represents the state of FillYourProfileBlankForm in the application.
class FillYourProfileBlankFormState extends Equatable {
  FillYourProfileBlankFormState({
    this.fullNameController,
    this.nameController,
    this.emailController,
    this.phoneNumberController,
    this.addressController,
    this.selectedCountry,
    this.fillYourProfileBlankFormModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  TextEditingController? addressController;

  FillYourProfileBlankFormModel? fillYourProfileBlankFormModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        fullNameController,
        nameController,
        emailController,
        phoneNumberController,
        addressController,
        selectedCountry,
        fillYourProfileBlankFormModelObj,
      ];
  FillYourProfileBlankFormState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    TextEditingController? addressController,
    Country? selectedCountry,
    FillYourProfileBlankFormModel? fillYourProfileBlankFormModelObj,
  }) {
    return FillYourProfileBlankFormState(
      fullNameController: fullNameController ?? this.fullNameController,
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      addressController: addressController ?? this.addressController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      fillYourProfileBlankFormModelObj: fillYourProfileBlankFormModelObj ??
          this.fillYourProfileBlankFormModelObj,
    );
  }
}
