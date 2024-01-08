import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/change_password_screen/models/change_password_model.dart';/// A provider class for the ChangePasswordScreen.
///
/// This provider manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj

// ignore_for_file: must_be_immutable
class ChangePasswordProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

ChangePasswordModel changePasswordModelObj = ChangePasswordModel();

@override void dispose() { super.dispose(); passwordController.dispose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
 }
