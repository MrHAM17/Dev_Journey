import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/create_new_password_screen/models/create_new_password_model.dart';/// A provider class for the CreateNewPasswordScreen.
///
/// This provider manages the state of the CreateNewPasswordScreen, including the
/// current createNewPasswordModelObj

// ignore_for_file: must_be_immutable
class CreateNewPasswordProvider extends ChangeNotifier {TextEditingController newpasswordController = TextEditingController();

TextEditingController passwordController = TextEditingController();

CreateNewPasswordModel createNewPasswordModelObj = CreateNewPasswordModel();

bool isShowPassword = true;

bool isShowPassword1 = true;

bool rememberme = false;

@override void dispose() { super.dispose(); newpasswordController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changePasswordVisibility1() { isShowPassword1 = !isShowPassword1; notifyListeners(); } 
void changeCheckBox1(bool value) { rememberme = value; notifyListeners(); } 
 }
