import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/sign_up_screen/models/sign_up_model.dart';/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignUpModel signUpModelObj = SignUpModel();

bool isShowPassword = true;

bool rememberme = false;

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
void changeCheckBox1(bool value) { rememberme = value; notifyListeners(); } 
 }
