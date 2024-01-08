import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/sign_up_screen/models/sign_up_model.dart';

/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  SignUpModel signUpModelObj = SignUpModel();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
