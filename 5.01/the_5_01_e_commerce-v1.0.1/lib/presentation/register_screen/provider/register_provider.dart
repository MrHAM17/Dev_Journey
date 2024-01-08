import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/register_screen/models/register_model.dart';/// A provider class for the RegisterScreen.
///
/// This provider manages the state of the RegisterScreen, including the
/// current registerModelObj

// ignore_for_file: must_be_immutable
class RegisterProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

RegisterModel registerModelObj = RegisterModel();

@override void dispose() { super.dispose(); fullNameController.dispose(); emailController.dispose(); passwordController.dispose(); passwordController1.dispose(); } 
 }
