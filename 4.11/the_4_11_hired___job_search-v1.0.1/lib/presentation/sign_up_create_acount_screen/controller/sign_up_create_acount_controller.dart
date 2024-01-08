import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/sign_up_create_acount_screen/models/sign_up_create_acount_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpCreateAcountScreen.
///
/// This class manages the state of the SignUpCreateAcountScreen, including the
/// current signUpCreateAcountModelObj
class SignUpCreateAcountController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<SignUpCreateAcountModel> signUpCreateAcountModelObj =
      SignUpCreateAcountModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
