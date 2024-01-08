import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/sign_in_screen/models/sign_in_model.dart';

/// A provider class for the SignInScreen.
///
/// This provider manages the state of the SignInScreen, including the
/// current signInModelObj

// ignore_for_file: must_be_immutable
class SignInProvider extends ChangeNotifier {
  SignInModel signInModelObj = SignInModel();

  @override
  void dispose() {
    super.dispose();
  }
}
