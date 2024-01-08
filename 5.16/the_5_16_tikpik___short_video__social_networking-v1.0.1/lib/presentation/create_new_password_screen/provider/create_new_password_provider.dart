import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/create_new_password_screen/models/create_new_password_model.dart';/// A provider class for the CreateNewPasswordScreen.
///
/// This provider manages the state of the CreateNewPasswordScreen, including the
/// current createNewPasswordModelObj

// ignore_for_file: must_be_immutable
class CreateNewPasswordProvider extends ChangeNotifier {TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

CreateNewPasswordModel createNewPasswordModelObj = CreateNewPasswordModel();

bool isShowPassword = true;

bool isShowPassword1 = true;

@override void dispose() { super.dispose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changePasswordVisibility1() { isShowPassword1 = !isShowPassword1; notifyListeners(); } 
 }
