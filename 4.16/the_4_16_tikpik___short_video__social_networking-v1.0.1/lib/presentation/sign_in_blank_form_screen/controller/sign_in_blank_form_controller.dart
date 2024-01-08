import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignInBlankFormScreen.
///
/// This class manages the state of the SignInBlankFormScreen, including the
/// current signInBlankFormModelObj
class SignInBlankFormController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignInBlankFormModel> signInBlankFormModelObj = SignInBlankFormModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> rememberme = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.forgotPasswordMethodsScreen, );Get.toNamed(AppRoutes.chooseYourInterestScreen, ); } 
 }
