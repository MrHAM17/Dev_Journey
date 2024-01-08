import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';/// A provider class for the SignInBlankFormScreen.
///
/// This provider manages the state of the SignInBlankFormScreen, including the
/// current signInBlankFormModelObj

// ignore_for_file: must_be_immutable
class SignInBlankFormProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignInBlankFormModel signInBlankFormModelObj = SignInBlankFormModel();

bool isShowPassword = true;

bool rememberme = false;

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox1(bool value) { rememberme = value; notifyListeners(); } 
 }
