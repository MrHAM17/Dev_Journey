import 'package:flutter/material.dart';
import 'package:the_5_03_todo/core/app_export.dart';
import 'package:the_5_03_todo/presentation/personality_screen/models/personality_model.dart';

/// A provider class for the PersonalityScreen.
///
/// This provider manages the state of the PersonalityScreen, including the
/// current personalityModelObj

// ignore_for_file: must_be_immutable
class PersonalityProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController hobbyController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  PersonalityModel personalityModelObj = PersonalityModel();

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    hobbyController.dispose();
    dateOfBirthController.dispose();
    countryController.dispose();
  }
}
