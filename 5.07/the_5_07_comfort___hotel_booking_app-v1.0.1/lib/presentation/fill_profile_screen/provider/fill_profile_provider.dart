import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/fill_profile_screen/models/fill_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the FillProfileScreen.
///
/// This provider manages the state of the FillProfileScreen, including the
/// current fillProfileModelObj

// ignore_for_file: must_be_immutable
class FillProfileProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

FillProfileModel fillProfileModelObj = FillProfileModel();

Country? selectedCountry;

@override void dispose() { super.dispose(); fullNameController.dispose(); nameController.dispose(); dateOfBirthController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in fillProfileModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
 }
