import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpBlankFormScreen.
///
/// This class manages the state of the SignUpBlankFormScreen, including the
/// current signUpBlankFormModelObj
class SignUpBlankFormController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpBlankFormModel> signUpBlankFormModelObj = SignUpBlankFormModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> rememberme = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
