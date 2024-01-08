import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/profile_screen/models/profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the ProfileScreen.
///
/// This provider manages the state of the ProfileScreen, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

ProfileModel profileModelObj = ProfileModel();

Country? selectedCountry;

@override void dispose() { super.dispose(); fullNameController.dispose(); nameController.dispose(); dateOfBirthController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
 }
