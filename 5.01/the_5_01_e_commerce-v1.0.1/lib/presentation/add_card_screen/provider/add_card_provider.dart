import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/add_card_screen/models/add_card_model.dart';/// A provider class for the AddCardScreen.
///
/// This provider manages the state of the AddCardScreen, including the
/// current addCardModelObj

// ignore_for_file: must_be_immutable
class AddCardProvider extends ChangeNotifier {TextEditingController cardNumberController = TextEditingController();

TextEditingController expirationDateController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardNumberController1 = TextEditingController();

AddCardModel addCardModelObj = AddCardModel();

@override void dispose() { super.dispose(); cardNumberController.dispose(); expirationDateController.dispose(); securityCodeController.dispose(); cardNumberController1.dispose(); } 
 }
