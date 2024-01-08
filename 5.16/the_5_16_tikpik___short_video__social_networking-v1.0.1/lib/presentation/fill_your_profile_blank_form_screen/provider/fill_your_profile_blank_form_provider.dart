import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/fill_your_profile_blank_form_screen/models/fill_your_profile_blank_form_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the FillYourProfileBlankFormScreen.
///
/// This provider manages the state of the FillYourProfileBlankFormScreen, including the
/// current fillYourProfileBlankFormModelObj

// ignore_for_file: must_be_immutable
class FillYourProfileBlankFormProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController addressController = TextEditingController();

FillYourProfileBlankFormModel fillYourProfileBlankFormModelObj = FillYourProfileBlankFormModel();

Country? selectedCountry;

@override void dispose() { super.dispose(); fullNameController.dispose(); nameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); addressController.dispose(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
 }
