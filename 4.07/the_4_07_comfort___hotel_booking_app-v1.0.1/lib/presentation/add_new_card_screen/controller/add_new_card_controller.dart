import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardScreen.
///
/// This class manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj
class AddNewCardController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController numberController = TextEditingController();

TextEditingController expiryDateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); numberController.dispose(); expiryDateController.dispose(); cvvController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.cardAddedScreen, ); } 
 }
