import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';/// A provider class for the SignUpBlankFormScreen.
///
/// This provider manages the state of the SignUpBlankFormScreen, including the
/// current signUpBlankFormModelObj

// ignore_for_file: must_be_immutable
class SignUpBlankFormProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignUpBlankFormModel signUpBlankFormModelObj = SignUpBlankFormModel();

bool isShowPassword = true;

bool rememberme = false;

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox1(bool value) { rememberme = value; notifyListeners(); } 
 }
