import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/log_in_screen/models/log_in_model.dart';

/// A provider class for the LogInScreen.
///
/// This provider manages the state of the LogInScreen, including the
/// current logInModelObj

// ignore_for_file: must_be_immutable
class LogInProvider extends ChangeNotifier {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LogInModel logInModelObj = LogInModel();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }
}
