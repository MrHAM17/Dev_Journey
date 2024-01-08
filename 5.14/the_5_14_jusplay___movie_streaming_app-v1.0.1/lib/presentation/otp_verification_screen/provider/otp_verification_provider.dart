import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/otp_verification_screen/models/otp_verification_model.dart';

/// A provider class for the OtpVerificationScreen.
///
/// This provider manages the state of the OtpVerificationScreen, including the
/// current otpVerificationModelObj

// ignore_for_file: must_be_immutable
class OtpVerificationProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpVerificationModel otpVerificationModelObj = OtpVerificationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
