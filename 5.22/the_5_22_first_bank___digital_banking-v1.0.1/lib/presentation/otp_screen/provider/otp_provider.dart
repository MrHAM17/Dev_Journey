import 'package:flutter/material.dart';
import 'package:the_5_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_5_22_first_bank___digital_banking/presentation/otp_screen/models/otp_model.dart';

/// A provider class for the OtpScreen.
///
/// This provider manages the state of the OtpScreen, including the
/// current otpModelObj

// ignore_for_file: must_be_immutable
class OtpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpModel otpModelObj = OtpModel();

  @override
  void dispose() {
    super.dispose();
  }
}
