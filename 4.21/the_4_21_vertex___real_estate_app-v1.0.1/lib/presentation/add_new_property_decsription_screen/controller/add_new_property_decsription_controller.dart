import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/add_new_property_decsription_screen/models/add_new_property_decsription_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewPropertyDecsriptionScreen.
///
/// This class manages the state of the AddNewPropertyDecsriptionScreen, including the
/// current addNewPropertyDecsriptionModelObj
class AddNewPropertyDecsriptionController extends GetxController {TextEditingController addressController = TextEditingController();

Rx<AddNewPropertyDecsriptionModel> addNewPropertyDecsriptionModelObj = AddNewPropertyDecsriptionModel().obs;

@override void onClose() { super.onClose(); addressController.dispose(); } 
 }
