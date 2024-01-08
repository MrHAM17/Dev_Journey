import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/sign_up_blank_screen/models/sign_up_blank_model.dart';/// A provider class for the SignUpBlankScreen.
///
/// This provider manages the state of the SignUpBlankScreen, including the
/// current signUpBlankModelObj

// ignore_for_file: must_be_immutable
class SignUpBlankProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignUpBlankModel signUpBlankModelObj = SignUpBlankModel();

bool isShowPassword = true;

bool rememberme = false;

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox1(bool value) { rememberme = value; notifyListeners(); } 
 }
