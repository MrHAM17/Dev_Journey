import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/reset_password_verify_code_screen/models/reset_password_verify_code_model.dart';

/// A provider class for the ResetPasswordVerifyCodeScreen.
///
/// This provider manages the state of the ResetPasswordVerifyCodeScreen, including the
/// current resetPasswordVerifyCodeModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordVerifyCodeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  ResetPasswordVerifyCodeModel resetPasswordVerifyCodeModelObj =
      ResetPasswordVerifyCodeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
