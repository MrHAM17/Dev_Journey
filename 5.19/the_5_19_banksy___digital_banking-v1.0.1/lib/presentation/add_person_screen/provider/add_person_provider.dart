import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/add_person_screen/models/add_person_model.dart';

/// A provider class for the AddPersonScreen.
///
/// This provider manages the state of the AddPersonScreen, including the
/// current addPersonModelObj

// ignore_for_file: must_be_immutable
class AddPersonProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  AddPersonModel addPersonModelObj = AddPersonModel();

  bool saveOnList = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
  }

  void changeCheckBox1(bool value) {
    saveOnList = value;
    notifyListeners();
  }
}
