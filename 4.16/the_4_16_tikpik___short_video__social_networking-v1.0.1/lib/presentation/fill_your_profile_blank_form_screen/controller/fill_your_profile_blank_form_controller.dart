import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/fill_your_profile_blank_form_screen/models/fill_your_profile_blank_form_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the FillYourProfileBlankFormScreen.
///
/// This class manages the state of the FillYourProfileBlankFormScreen, including the
/// current fillYourProfileBlankFormModelObj
class FillYourProfileBlankFormController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<FillYourProfileBlankFormModel> fillYourProfileBlankFormModelObj = FillYourProfileBlankFormModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); nameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); addressController.dispose(); } 
 }
