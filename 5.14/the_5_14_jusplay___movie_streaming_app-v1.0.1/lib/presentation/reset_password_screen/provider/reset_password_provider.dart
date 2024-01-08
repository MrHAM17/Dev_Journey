import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/reset_password_screen/models/reset_password_model.dart';

/// A provider class for the ResetPasswordScreen.
///
/// This provider manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordProvider extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  ResetPasswordModel resetPasswordModelObj = ResetPasswordModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    newpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
