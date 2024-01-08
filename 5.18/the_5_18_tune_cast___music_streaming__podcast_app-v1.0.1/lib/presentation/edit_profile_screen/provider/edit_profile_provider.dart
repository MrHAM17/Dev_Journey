import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {TextEditingController inputFieldsController = TextEditingController();

TextEditingController inputFieldsController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

EditProfileModel editProfileModelObj = EditProfileModel();

Country? selectedCountry;

@override void dispose() { super.dispose(); inputFieldsController.dispose(); inputFieldsController1.dispose(); dateController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in editProfileModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
 }
