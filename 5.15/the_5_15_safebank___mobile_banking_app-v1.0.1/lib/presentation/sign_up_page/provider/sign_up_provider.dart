import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/sign_up_page/models/sign_up_model.dart';

/// A provider class for the SignUpPage.
///
/// This provider manages the state of the SignUpPage, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController checkmarkController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  SignUpModel signUpModelObj = SignUpModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    checkmarkController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signUpModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in signUpModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
