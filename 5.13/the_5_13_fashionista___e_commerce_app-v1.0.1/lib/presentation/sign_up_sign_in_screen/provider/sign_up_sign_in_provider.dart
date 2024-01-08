import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/sign_up_sign_in_screen/models/sign_up_sign_in_model.dart';

/// A provider class for the SignUpSignInScreen.
///
/// This provider manages the state of the SignUpSignInScreen, including the
/// current signUpSignInModelObj

// ignore_for_file: must_be_immutable
class SignUpSignInProvider extends ChangeNotifier {
  SignUpSignInModel signUpSignInModelObj = SignUpSignInModel();

  @override
  void dispose() {
    super.dispose();
  }
}
