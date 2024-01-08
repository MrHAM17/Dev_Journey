import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/add_new_card_screen/models/add_new_card_model.dart';/// A provider class for the AddNewCardScreen.
///
/// This provider manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj

// ignore_for_file: must_be_immutable
class AddNewCardProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController numberController = TextEditingController();

TextEditingController expiryDateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

AddNewCardModel addNewCardModelObj = AddNewCardModel();

@override void dispose() { super.dispose(); nameController.dispose(); numberController.dispose(); expiryDateController.dispose(); cvvController.dispose(); } 
 }
