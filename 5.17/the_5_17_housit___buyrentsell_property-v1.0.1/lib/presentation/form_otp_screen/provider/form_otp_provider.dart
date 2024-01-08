import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/form_otp_screen/models/form_otp_model.dart';/// A provider class for the FormOtpScreen.
///
/// This provider manages the state of the FormOtpScreen, including the
/// current formOtpModelObj

// ignore_for_file: must_be_immutable
class FormOtpProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

FormOtpModel formOtpModelObj = FormOtpModel();

@override void dispose() { super.dispose(); } 
 }
