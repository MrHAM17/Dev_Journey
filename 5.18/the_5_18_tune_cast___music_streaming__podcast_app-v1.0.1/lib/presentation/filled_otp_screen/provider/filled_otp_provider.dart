import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/filled_otp_screen/models/filled_otp_model.dart';/// A provider class for the FilledOtpScreen.
///
/// This provider manages the state of the FilledOtpScreen, including the
/// current filledOtpModelObj

// ignore_for_file: must_be_immutable
class FilledOtpProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

FilledOtpModel filledOtpModelObj = FilledOtpModel();

@override void dispose() { super.dispose(); } 
 }
