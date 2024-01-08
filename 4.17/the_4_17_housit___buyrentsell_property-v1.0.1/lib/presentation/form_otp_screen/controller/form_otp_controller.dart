import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/form_otp_screen/models/form_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the FormOtpScreen.
///
/// This class manages the state of the FormOtpScreen, including the
/// current formOtpModelObj
class FormOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<FormOtpModel> formOtpModelObj = FormOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
