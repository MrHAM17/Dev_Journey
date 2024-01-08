import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/reset_password_email_page/models/reset_password_email_model.dart';

/// A provider class for the ResetPasswordEmailPage.
///
/// This provider manages the state of the ResetPasswordEmailPage, including the
/// current resetPasswordEmailModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordEmailProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  ResetPasswordEmailModel resetPasswordEmailModelObj =
      ResetPasswordEmailModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}
