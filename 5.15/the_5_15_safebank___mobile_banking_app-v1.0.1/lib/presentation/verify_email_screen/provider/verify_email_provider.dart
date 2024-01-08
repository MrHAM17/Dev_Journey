import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/verify_email_screen/models/verify_email_model.dart';

/// A provider class for the VerifyEmailScreen.
///
/// This provider manages the state of the VerifyEmailScreen, including the
/// current verifyEmailModelObj

// ignore_for_file: must_be_immutable
class VerifyEmailProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  VerifyEmailModel verifyEmailModelObj = VerifyEmailModel();

  @override
  void dispose() {
    super.dispose();
  }
}
