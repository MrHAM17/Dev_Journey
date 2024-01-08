import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/signup_screen/models/signup_model.dart';

/// A provider class for the SignupScreen.
///
/// This provider manages the state of the SignupScreen, including the
/// current signupModelObj

// ignore_for_file: must_be_immutable
class SignupProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  SignupModel signupModelObj = SignupModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
