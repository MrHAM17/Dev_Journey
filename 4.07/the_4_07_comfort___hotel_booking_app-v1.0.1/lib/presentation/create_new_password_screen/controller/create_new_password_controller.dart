import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/create_new_password_screen/models/create_new_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateNewPasswordScreen.
///
/// This class manages the state of the CreateNewPasswordScreen, including the
/// current createNewPasswordModelObj
class CreateNewPasswordController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<CreateNewPasswordModel> createNewPasswordModelObj = CreateNewPasswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

Rx<bool> rememberme = false.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); passwordController.dispose(); } 
@override void onReady() { // TODO: implement Actions
 } 
 }
