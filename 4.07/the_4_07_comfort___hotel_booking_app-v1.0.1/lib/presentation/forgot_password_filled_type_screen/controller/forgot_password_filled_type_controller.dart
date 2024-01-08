import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/forgot_password_filled_type_screen/models/forgot_password_filled_type_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the ForgotPasswordFilledTypeScreen.
///
/// This class manages the state of the ForgotPasswordFilledTypeScreen, including the
/// current forgotPasswordFilledTypeModelObj
class ForgotPasswordFilledTypeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordFilledTypeModel> forgotPasswordFilledTypeModelObj = ForgotPasswordFilledTypeModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { Get.toNamed(AppRoutes.createNewPasswordScreen, ); } 
 }
