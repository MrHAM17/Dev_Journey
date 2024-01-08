import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/sign_up_screen/models/sign_up_model.dart';

/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  SignUpModel signUpModelObj = SignUpModel();

  String gender = "";

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    dateOfBirthController.dispose();
  }

  void changeRadioButton1(String value) {
    gender = value;
    notifyListeners();
  }
}
