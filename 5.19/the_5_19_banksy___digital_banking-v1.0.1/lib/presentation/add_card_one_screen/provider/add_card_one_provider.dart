import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/add_card_one_screen/models/add_card_one_model.dart';

/// A provider class for the AddCardOneScreen.
///
/// This provider manages the state of the AddCardOneScreen, including the
/// current addCardOneModelObj

// ignore_for_file: must_be_immutable
class AddCardOneProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  AddCardOneModel addCardOneModelObj = AddCardOneModel();

  bool saveMyCardDetails = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
    cvvController.dispose();
  }

  void changeCheckBox1(bool value) {
    saveMyCardDetails = value;
    notifyListeners();
  }
}
