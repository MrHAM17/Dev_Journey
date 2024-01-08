import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/add_new_card_screen/models/add_new_card_model.dart';/// A provider class for the AddNewCardScreen.
///
/// This provider manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj

// ignore_for_file: must_be_immutable
class AddNewCardProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController cvvController = TextEditingController();

AddNewCardModel addNewCardModelObj = AddNewCardModel();

DateTime selectedInputFieldsDate = DateTime.now();

@override void dispose() { super.dispose(); nameController.dispose(); cardNumberController.dispose(); cvvController.dispose(); } 
 }
